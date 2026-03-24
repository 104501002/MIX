A Makefile is a special file used by the make build automation tool to control how software projects are compiled and built. 
It automates repetitive tasks like compiling code, linking files, running tests, and cleaning up build artifacts. 
Makefiles are especially popular in C/C++ projects but work with any programming language.

For VLSI
-compilation: Check syntax error
-elaboration: Check if design and testbench are consistent and all of them connected correctly. Final stage of elab is linking the object files to libraries with build-in function respect to the simulator proj/sw. This 
              produces an executable proj that can be directly executed.
-simulation: Executable binary that created in elab stage is run in this stage. Process the testbench that applies stimulus to RTL design and produce the output.

Key Components
A Makefile consists of rules with this structure:

target: dependencies
	TAB command
-target: The file to create (e.g., app, main.o)
-dependencies: Files needed to build the target
-commands: Shell commands to execute (must start with a TAB character, not spaces)


Makefile Cheatsheet
Feature	                    Syntax	                                        Example
Variable	                VAR = value	                                    CC = gcc
Use variable	            $(VAR)	                                        $(CC)
Target with deps	        target: dep1 dep2	                            app: main.o foo.o
Automatic variables	        $@ (target), $< (first dep), $^ (all deps)	    gcc -o $@ $^
Pattern rule	            %.o: %.c	                                    Compiles all .c to .o
Phony target	            .PHONY: target	                                .PHONY: clean
Comments	                # comment	                                    # Build the app
Run all jobs parallel	    make -j4	                                    Speeds up builds
Dry run	                    make -n	                                        Just print the command without run

Key Rules to Remember
✅ Commands must start with a TAB (not spaces) – most common error!
✅ File must be named Makefile (capital M) or makefile
✅ Dependencies control rebuilds – make only rebuilds if deps changed
✅ Use .PHONY for targets that aren't actual files
✅ Variables reduce repetition – use CC, CFLAGS, etc.
For more details, check the GNU Make Manual.
