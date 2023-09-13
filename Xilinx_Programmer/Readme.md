# Xilinx Tool to fast flashing

## This tool is quite useful for companies that have any xilinx chip on its products.

The xilinx development IDE is ISE Design suite, it is quite complete, and is irrelevant for these tools.
It is not necessary to do the complete installation of the suite to have the programming functionalities, to adapt a device for mass production (massive flash) you only need to install the LabTools package (review the installer, I don't remember very well at this moment the detail of how to do it). Once installed, the tool called from these scripts will be available. If it does not work, you must search for the containing folder in order to include it in the path, this applies to Windows.

Based on the ISE documentation, compact receives configuration parameters from the flash tool, these parameters must be defined as they are in the documented description (see documentation of the version of the IDE to use) basically, the port is defined, the " device" or .jed file to load and the action. When this is done in the compact graphical interface, additional delete and verify options are available. These actions can also be specified in the file to be performed.

The sample script is used for a new chip, which should not be deleted.

This is the content of the xil2.cmd file actually the extension doesn't matter, pure text works.The xilinx development IDE is ISE Design suite, it is quite complete, and is irrelevant for these tools.

```holsetmode -bscan
setCable -port auto
addDevice -p 1 -file "pathtofile.jed"
program -p 1
quit
```

Now, to make the entire process efficient, we must iterate over it, for this we create a .bat or .cmd file to work which will be responsible for calling the file with the instructions for each device that is going to be programmed.

The content of the file is as follows:

```
echo off

:progx
color 4
impact -batch "pathtoinstructionset(xil2.cmd).cmd"
if not %errorlevel% == 0 (
    CLS
    Echo Error!!!
    Echo=
    goto progx
)
CLS
color 02 
ECHO Xilinx Ok!
timeout 2
goto progx
exit
REM pause
REM goto progx

```

In practical terms, the operator will see a Windows console window, in case of any problem, its text will turn red as a warning signal (the most common is poor contact of the programmer pins), with these the tool will continue trying until finished.

This was the initial version created based on the documentation, there are much more robust versions that include log as a control tool, more actions on the chip, daisy chain programming, integration with other tools, etc. But this is quite efficient and simple to implement. For a small or medium-sized company it is enough.

If this is not enough or useful for your solution please contact me ofrojasc@gmail.com.
