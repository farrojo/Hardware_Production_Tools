Echo off
TITLE SAM D21 Programming
color F0
SET PROD_ID=Test device
SET CLIENT_ID=User
set DUP_MCU=SAM D21
SET D21_BOOT="PathToBootloader.elf"
SET D21_FIRM="PathToFirmaware.bin"
SET FUSVALD21=BFC7FED95DFEEEEE # fuses setup, refer to datasheet
SET TCLK=20mhz
goto PROG
:PROG

:MCU
    CLS
    Echo %PROD_ID%
    Echo %CLIENT_ID%
    Echo %DUP_MCU%
    Echo=
    echo %TIME%
    Echo=
    Echo Process:
    
    atprogram -t atmelice -s J41800042724 -cl %TCLK% -i SWD -d ATSAMD21E18A program -c -f %D21_BOOT% write -fs -o 0x804000 --values %FUSVALD21% program -f %D21_FIRM% -o 0x2000    
    
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
ECHO Total time: %TOTAL_TIME:~-4,2%,%TOTAL_TIME:~-2% Seg
Echo=
Echo Flashing Finished!

pause # Any key must be pressed to continue
goto PROG