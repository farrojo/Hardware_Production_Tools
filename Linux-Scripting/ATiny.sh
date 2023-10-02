#!/bin/bash
clear
echo "ATtiny10 Programming"
PROD_ID="Test device"
CLIENT_ID="User"
DUP_MCU="ATtiny10"
Tiny_FIRM="PathToAtworkiny12Firmware.elf"

while true; do
    clear
    echo "$PROD_ID"
    echo "$CLIENT_ID"
    echo ""
    echo "Process:"
    
    atprogram -t atmelice -s J41800085605 -i TPI -d ATtiny10 program -c -f "$Tiny_FIRM"
    
    if [ $? -ne 0 ]; then
        echo "$DUP_MCU ERROR!!"
        sleep 1
    else
        echo "Done!"
        echo ""
        END_TIME=$(date +"%s")
        TOTAL_TIME=$((END_TIME - INIT_TIME))
        echo "$TOTAL_TIME"
        echo "Total Time: $(date -d@$TOTAL_TIME -u +%M,%S) Seg"
        echo ""
        echo "Flashing Finished!"
        read -p "Press Enter to continue..."
    fi
done
