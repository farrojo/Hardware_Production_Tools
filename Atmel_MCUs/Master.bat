Echo off
Title Flasing chips Master
SET PROD_ID=Device Under Process
SET CLIENT_ID=Client
CLS
cd "pathToWorkingFolder"
Echo %PROD_ID%
Echo %CLIENT_ID%
Echo=
Pause
:Main
Cls
Echo %PROD_ID%
Echo %CLIENT_ID%
Echo=
Echo Flashing...
Start /w SAMD21.bat | start /w ATiny10.bat | start /w xil.cmd
Cls
Echo %PROD_ID%
Echo %CLIENT_ID%
Echo=
Echo Full flashing Finished!!
:End
Pause
GOTO main
Echo on