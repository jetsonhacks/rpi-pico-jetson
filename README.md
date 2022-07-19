# rpi-pico-jetson
Interact with a Raspberry Pi Pico directly from a NVIDIA Jetson. This is specifically for Jetsons running JetPack 4.X versions, including the Jetson Nano, TX1, TX2, AGX Xavier and Xavier NX.

## MicroPython

MicroPython is the "officially" supported version of Python for the Raspberry Pi Pico. On the Raspberry Pi, Thonny is the IDE of choice for programming in MicroPython.

Thonny is available in the official Ubuntu 18 repositories for Jetson aarch64. However the version in the repository is 2.1, and Pico support was not added until 3.x. Also, Thonny (currently 3.3.14) requires an update to pip beyond what is in the Ubuntu repostiory and Python 3.7+ to install correctly. The Python version installed on the Jetsons in the latest release is 3.6. 

The install_thonny.sh script in this repository will install Thonny on the Jetson. The script first installs Python3.7. Then the Python package venv installs to facilitate installing Thonny into a virtual environment in the directory ~/thonny. Next, pip is upgraded in the created virtual environment. Finally, Thonny is installed. In addition, the current user is added to the 'dialout' group so that the Pico can be accessed. Rebooting the system ensures that the Pico is available to Thonny.

To run the script:

$ ./install_thonny.sh

The script is straightforward, you may want to configure the installation script to meet your needs, such as setting a different installation directory or upgraded Python version.

In order to run Thonny:

$ cd ~/thonny
$ source bin/activate
$ thonny

You will then need to configure Thonny for use with MicroPython and the Pico.

# Releases

July, 2022 - Pre-release
* Install Thonny Python IDE for use with Raspberry Pi Pico
* Tested on Jetson Nano, Jetson Xavier NX

