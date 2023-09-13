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
