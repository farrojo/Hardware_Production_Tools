# Atmel MCUs

For this example, we are going to work with two types of microcontrollers from the manufacturer Atmel, the first is a 32-bit Cortex M0+ SAMD21, the second is an 8-bit low-power Atiny10 microcontroller, the architecture is different, the flash process is very similar with small variations due to the architecture of each of the devices. Additionally, in the example a master control will be integrated that is responsible for the parallel execution of the flash of these 2 microcontrollers and will include the Xilinx gal contained in this repository.

The SAM D21 is quite a robust microcontroller, it can be directly flashed and even use a bootloader to manage future firmware updates. In the example the bootloader case is used, and the NVM Calibration and Auxiliary Space configuration is performed.

In order to get all done, it is pretty important to undestand that user must have flashing tools as MCU has, in order to obtimize the flash proccess without doing additional connections, to get a propers set up, flashing tool's serial must be found, in order to be configured inside corresponding .bat file. This project was perfomed using [Atmel-Ice](https://www.microchip.com/en-us/development-tool/atatmel-ice), [here](https://ww1.microchip.com/downloads/en/DeviceDoc/Atmel-ICE_UserGuide.pdf) you can find user guide in order to make its setup ang get serial number.
