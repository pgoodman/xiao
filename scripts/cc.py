#!/usr/bin/python

import sys
import subprocess
import re
import patch
import os

scripts_dir = os.path.dirname(__file__)
xiao_dir = os.path.dirname(scripts_dir)
bin_dir = os.path.join(xiao_dir, 'bin')

if __name__ == "__main__":
    CC = os.getenv('REAL_CC', 'clang-3.8')
else:
    CC = os.getenv('REAL_CXX', 'clang++-3.8')

args = " ".join(sys.argv[1:])

object_file_name = re.compile(r"(([a-zA-Z0-9_/\~-]+)\.o)")

def run_shell(command):
    print command
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
or ".cxx" in args \
or ".hpp" in args:

    # get the output object file's name
    m = object_file_name.search(args)
    assert m is not None
    out_file_name = m.group(2)

    # convert to an assembly file
    args = object_file_name.sub(r"\2.S", args)
    
    # compile to assembly
    run_shell("{} -S -O3 -fno-stack-protector -foptimize-sibling-calls -fomit-frame-pointer {}".format(CC, args))

    # patch the assembly file
    if patch.patch_file(out_file_name + ".S"):
        # compile assembly to an object file
        run_shell("{} -x assembler -c {}.S -o {}.o".format(CC, out_file_name, out_file_name))

# nope, let's just hope this is to compile the binary; inject in the xray binary
# so that it will take over
else:
    run_shell("{} {} {}/libxiao.a ".format(CC, args, bin_dir))
