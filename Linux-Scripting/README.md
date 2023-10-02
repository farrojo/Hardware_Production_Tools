# Linux Execution

As mentioned previously, this project was developed to be executed entirely on Linux, since the main RS232 management tools come only for this operating system. However, the great capacity of free operating systems allows us to adjust the installations to be able to execute it. This exercise is developed under Ubuntu in version 22.04, but it is easily scalable to any operating system based on Debian or Redhat.

The first thing is to install Docklight [here](https://docklightnews.blogspot.com/2021/03/docklight-on-linux.html), a step by step to carry out the installation.

Once installed, the port names must be changed and adjusted to those configured in the communication cables of the device under test.

The execution of the Windows bat files changes radically, and they adjust to the Windows batch, remember that these are the ones in charge of controlling the execution of the testing and programming tools of the devices.

For programming, the atmel ICE tool must also be installed, [here](https://www.avrfreaks.net/s/topic/a5C3l000000UVaXEAW/t135219), a description of how to do the process. Once installed, and having adjusted the corresponding serials as described in the Atmel folder.

Linux batch files, in Ubuntu they have the .sh extension, in essence they are process automation control files, with a more robust console, and with a broader execution.

Additionally, in order to use Atmel's programming functions, the Atmel Studio must be installed; however, for the purposes of mass production programming only, the [standalone] tool can be installed (https://microchip .my.site.com/s/article/atprogram-standalone-utility), and perform the respective configuration with the Atmel Ice to execute the command line, as is done in Windows.

Xilin ISE Design suite installation [Here](http://dreamrunner.org/blog/2012/09/12/install-xilinx-ise-on-the-ubuntu/)