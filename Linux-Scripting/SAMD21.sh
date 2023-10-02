#!/bin/bash
clear
echo "SAM D21 Programming"
PROD_ID="Test device"
CLIENT_ID="User"
DUP_MCU="SAM D21"
D21_BOOT="PathToBootloader.elf"
D21_FIRM="PathToFirmaware.bin"
FUSVALD21="BFC7FED95DFEEEEE" # fuses setup, refer to datasheet
TCLK="20mhz"

while true; do
    clear
    echo "$PROD_ID"
    echo "$CLIENT_ID"
    echo "$DUP_MCU"
    echo ""
    echo "Process:"
    echo "$(date +"%T")"
    echo ""

    atprogram -t atmelice -s J41800042724 -cl "$TCLK" -i SWD -d ATSAMD21E18A program -c -f "$D21_BOOT" write -fs -o 0x804000 --values "$FUSVALD21" program -f "$D21_FIRM" -o 0x2000

    if [ $? -ne 0 ]; then
        echo "$DUP_MCU ERROR!!"
        sleep 1
    else
        echo "Done!"
        echo ""
        END_TIME=$(date +"%s")
        TOTAL_TIME=$((END_TIME - INIT_TIME))
        echo "$TOTAL_TIME"
        echo "Total time: $(date -d@$TOTAL_TIME -u +%M,%S) Seg"
        echo ""
        echo "Flashing Finished!"
        read -p "Press Enter to continue..."
    fi
done
