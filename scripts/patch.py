
import re
import subprocess

LABEL = re.compile(r"^([a-zA-Z0-9_]+):(\s*)(#.*)?$")
TAIL_CALL = re.compile(r"^.*TAILCALL$")
FUNCTION_RETURN = re.compile(r"^\s+ret.*$")

def demangle(name):
    args = ['c++filt', '-n', name]
    pipe = subprocess.Popen(args, stdin=subprocess.PIPE, stdout=subprocess.PIPE)
    stdout, _ = pipe.communicate()
    demangled = stdout.split("\n")

    # Each line ends with a newline, so the final entry of the split output
    # will always be ''.
    if 2 != len(demanged):
        return False

    return demangled[0]

def patch_lines(lines):
    """Parse the lines of an assebly file, looking for functions to
    patch, and return the patched assembly as a string."""

    out_lines = []
    in_procedure = False
    i = -1

    assert len(lines)

    while i < (len(lines) - 1):
        i = i + 1
        line = lines[i]

        if not len(line):
            continue

        if "#" == line[0]:
            continue

        # handle main; note: this assumes that main is never called from another
        # function
        if line.startswith("_main:"):
            out_lines.append("_instrumented_main:                     ## @instrumented_main")
            in_procedure = False
            continue
        elif "\t.globl\t_main" == line:
            out_lines.append("\t.globl\t_instrumented_main")
            continue
        else:
            out_lines.append(line)

        # patch the beginning of a procedure
        if line.startswith("\t.cfi_startproc"):

            directive = out_lines.pop()
            func_label = out_lines.pop()

            # ensure 16 byte alignment of all function entry points
            if out_lines[-1].startswith("\t.align"):
                out_lines.pop()

            out_lines.extend(["\t.align\t16, 0x90", func_label, directive])

            in_procedure = True
            out_lines.extend(["\tjmp LtmpX%d" % i] + (["\tnop"] * 10) + ["LtmpX%d" % i + ":"])

        # end of a procedure
        elif "\t.cfi_endproc" == line:
            #out_lines.pop()
            in_producedure = False

        # tail call to another procedure
        elif TAIL_CALL.match(line):
            out_lines.extend(["\tnop"] * 10 + [out_lines.pop(), "\tint\t$3"])

        # return from a procedure
        elif FUNCTION_RETURN.match(line):
            out_lines.extend(["\tnop"] * 10 + ["\tint\t$3"])

        # call frame information directive
        #elif line.startswith("\t.cfi"):
        #    out_lines.pop()

    out_lines.append("")

    return "\n".join(out_lines)

def patch_file(file_name):
    """Given a file name, patch an assembly file."""
    try:
        with open(file_name, "r+") as ff:
            lines = [l.rstrip(" \r\n\t") for l in ff]
            ff.truncate(0)
            ff.write(patch_lines(lines))

        return True

    except IOError:
        return False

