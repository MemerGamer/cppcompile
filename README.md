# cppcompile
## Bash script for easier C++ compiling and running from terminal.

The program searches for the .cpp files then tries compiles it.
Otherwise displays the compilation error.

# Demo
If you want to try the program you could try it in the demo folder.
The demo program prints out input arguments to the terminal, if there is none prints out ```'./a.out```.

Demo usage:
```console
cd demo/
cppcompile.sh banana 5 4.8
```
Output should be:
```console
Program arguments are: 'banana', '5', '4.8'.
```

## Usage example:
```console
cppcompile.sh [Argument1] [Argument2] ...
```
## Input arguments are optional

NOTE: In the case of multiple input arguments, each argument has to be separated with a space

### NOTE: 
If you want to make modifications to the script, for example using a different c++ standard, (not c++20) then do that firstly before running the commands below.

# Installation

For using the script you need to download it.
```console
git clone https://github.com/MemerGamer/cppcompile.git
cd cppcompile/
```

## GNU Linux / OS X 
After downloading you need to make it an executable

```console
chmod +x ./cppcompile.sh
```

After that you need to copy the script to the ```/usr/bin``` directory.
For this you will need to be a sudoer!
```console
sudo cp ./cppcompile.sh /usr/bin/
```

## Windows
(You will need GitBash or WSL enabled)

After downloading you need to put ```cppcompile_win.sh``` in a folder, or create a folder somewhere secure.
After that you need to put the folders path in the environment variables.
[Example](https://docs.oracle.com/en/database/oracle/machine-learning/oml4r/1.5.1/oread/creating-and-modifying-environment-variables-on-windows.html#GUID-DD6F9982-60D5-48F6-8270-A27EC53807D0)

Now you can use it in the Windows Terminal like:
```console
cppcompile_win.sh [Argument1] [Argument2] ...
```


