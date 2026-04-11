# hello - A simple "Hello World" in Prog8.

Just outputs some greetings.

## Build instructions

All non-source artifacts will be created in the bin/ subfolder, including
assembler source, listing and (on the C64) executable .PRG file.

You can either use the provided **Makefile** with the commands

  * `make` to create the .prg file
  * `make run` to run it
  * `make clean` to delete artifacts in the bin/ directory
  
or you can use the provided script files:

  * `./build.sh` to build and run the .prg file
  * `./clean.sh` to clean the output files

In either case, you need to have `prog8c` accessible in your path.

For running the example, the `x64sc` from VICE needs also be in your path.
