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
    ./SAMD21.sh & ./ATiny10.sh & ./xil.cmd ## Check README.md to view ISE installation example
    wait
    clear
    echo "$PROD_ID"
    echo "$CLIENT_ID"
    echo ""
    echo "Full flashing Finished!!"
    read -p "Press Enter to continue..."
done
