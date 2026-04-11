# PROG8 - Welcome to Prog8 on the C64

If BASIC, C and Assembler are not enough languages to try out,
what about Prog8? This is another programming language which is also
available for the Commodore 64.

  * ReadTheDocs: https://prog8.readthedocs.io/en/latest/index.html
  * Github: https://github.com/irmen/prog8

Use the information above to create an environment which is suitable for
your liking. Examples generally assume that all required tools are available
in the PATH of the current user.

Also note that you might need additional toolsets like Java and 64tass.

## My Prog8 environment

Prog8 has been cloned from its Github repository and then `./gradlew` and
`./gradlew build` have been used to create it.

This creates some output in 'prog8/compiler/build/install/prog8c/bin' and
the complete path has been added to my .bashrc file.

    export PATH=$PATH:$HOME/workspace/prog8/compiler/build/install/prog8c/bin

This allows it to use "prog8c" in a newly opened bash shell.

    frank@lnxdeb12fsmf780:~$ prog8c -version

    Prog8 compiler v11.4 by Irmen de Jong (irmen@razorvine.net)
    This software is licensed under the GNU GPL 3.0, see https://www.gnu.org/licenses/gpl.html

Before v11.4, I directly used the .jar file with some alias.

Syntax-Files are provided, unfortunately I did not get the one for Visual
Studio Code working, whereas the ones for Sublime Text and nano worked
without much hassle.

## Makefile, build scripts and examples

A Makefile is provided which should be able to perform building - if the above
mentioned environment is set up. Also some example build scripts are provided
which might help. The Makefile requires GNU Make.

## Note for different targets

Obviously, prog8 is not only available for creating targets for the
Commodore 64. It also is capable of creating targets for e.g. the
Commander X16. In this case, the commands differ slightly and even
some parts of the source-code might be different (e.g. there is no
logo on the C64).
