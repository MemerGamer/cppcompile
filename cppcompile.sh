#!/bin/bash

# The program searches for the .cpp files then compiles it.
# g++ -std=c++20 main.cpp function1.cpp function2.cpp [...]
# After compiling checks if the compiling was successfull
# If it was runs the file with the input argument(s)
#  ./a.out sample.txt
# Otherwise displays the compilation error

# Usage example for 2 input arguments:
# cppcompile.sh file1.txt input.in
# NOTE: In the case of multiple input arguments, each argument has to be separated with a space

# Base of compilation code

# If you want to change the c++ standard for example
# if you want to use c++23 all you need to do is to rewrite it int the code
# ex: g++ -std=c++20 becomes g++ -std=c++23
cmdbase="g++ -std=c++20 "

# Searching for .cpp files
for file in *
do
    if ! [ -d $file ]
    then
        if [[ $file == *.cpp ]]
        then
            cmdbase+="$file "
        fi
    fi
done;

# Checking arguments
for argument in "$@"
do
    arguments+="$argument ";
done

output=$cmdbase
if [[ $? != 0 ]]; then
    # There was an error, display the error in $output
    echo -e "Error:\n$output"
else
    # Compilation successful
    cmdbase
    ./a.out $arguments
fi
