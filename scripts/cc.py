#!/usr/bin/python

import sys
import subprocess
import re
import patch
import os

if __name__ == "__main__":
    CC = 'clang'
else:
    CC = 'clang++'

args = " ".join(sys.argv[1:])

object_file_name = re.compile(r"(([a-zA-Z0-9_/\~-]+)\.o)")

def run_shell(command):
    p = subprocess.Popen([command], 
        stdin=subprocess.PIPE, 
        stdout=sys.stdout, 
        stderr=sys.stderr, 
        cwd=os.getcwd(),
        shell=True
    )
    return p.wait()

# does it look like we're compiling from source?
if ".c" in args \
or ".h" in args \
or ".cc" in args \
or ".cpp" in args \
or ".hpp" in args:

    # get the output object file's name
    m = object_file_name.search(args)
    assert m is not None
    out_file_name = m.group(2)

    # convert to an assembly file
    args = object_file_name.sub(r"\2.S", args)
    
    # compile to assembly
    run_shell(CC + " -S -O3 -fno-stack-protector -foptimize-sibling-calls -fomit-frame-pointer " + args)

    # patch the assembly file
    if patch.patch_file(out_file_name + ".S"):

        # compile assembly to an object file
        run_shell("clang -x assembler -c " + out_file_name + ".S -o " + out_file_name + ".o")

# nope, let's just hope this is to compile the binary; inject in the xray binary
# so that it will take over
else:
    run_shell(CC + " " + args + " -L/Users/petergoodman/Code/xiao/bin -lxiao")
