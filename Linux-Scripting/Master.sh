#!/bin/bash
clear
echo "Flashing chips Master"
PROD_ID="Device Under Process"
CLIENT_ID="Client"
cd "pathToWorkingFolder"
echo "$PROD_ID"
echo "$CLIENT_ID"
echo ""
read -p "Press Enter to continue..."
while true; do
    clear
    echo "$PROD_ID"
    echo "$CLIENT_ID"
    echo ""
    echo "Flashing..."
    ./SAMD21.sh & ./ATiny10.sh ##& ./xil.cmd Xilinx support still in progress due to MES limitations in Ubuntu (under review)
    wait
    clear
    echo "$PROD_ID"
    echo "$CLIENT_ID"
    echo ""
    echo "Full flashing Finished!!"
    read -p "Press Enter to continue..."
done
