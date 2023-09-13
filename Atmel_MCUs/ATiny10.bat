Echo off
TITLE ATiny10 Programming
color F0
SET PROD_ID=Test device
SET CLIENT_ID=User
set DUP_MCU=ATIniy10
SET Tiny_FIRM="PathToAtworkiny12Firmware.elf"
goto PROG
:PROG

:MCU
    CLS
    Echo %PROD_ID%
    Echo %CLIENT_ID%
    Echo %DUP_MCU%
    Echo=
    Echo Process:
    
    atprogram -t atmelice -s J41800085605 -i TPI -d ATtiny10 program -c -f %Tiny_FIRM% 
    
    IF NOT %errorlevel% == 0 (
        Echo %DUP_MCU% ERROR!!
        Timeout 1
        GOTO MCU
    ) 
    Echo Done!
    Echo=
    SET END_TIME=%TIME:~-5,2%*100+%TIME:~-2%
    set /a TOTAL_TIME=%END_TIME%-%INIT_TIME%
:END

echo %TOTAL_TIME%
ECHO Total Time: %TOTAL_TIME:~-4,2%,%TOTAL_TIME:~-2% Seg
Echo=
Echo Flashing Finished!

pause # Any key must be pressed to continue
goto PROG