# Easy Quake Selector

Easy Quake Selector is a script created for use with Quake 1 and Quake 2 on UNIX and UNIX-like operating systems. This script allows you to select which Quake game you want to play and which mod you want to use, and then launches the selected client with the appropriate parameters.
Supported Clients and Source Ports

The following Quake 1 and Quake 2 clients and source ports have been tested with EQS and are known to work:
Quake 1

    Quakespasm
    Quakespasm Spiked
    vkQuake
    Ironwail

Quake 2

    Yamagi Quake 2
    vkQuake2

Installation and Usage

Clone the repository

```git clone https://github.com/okavatti/eqs```

Open a terminal and navigate to the directory.

```cd eqs```

Make the eqs.sh script executable by running ```chmod +x eqs.sh.```
Run the script by running ```./eqs.sh``` in the terminal.

When running the script, you will be asked which game you want to play. After selecting a game, you will be prompted to enter the location of the game's executable file. You should enter the location of the file itself, not the directory it is located in. Finally, you will be asked which mod you want to use.


If you are using Windows, it is recommended that you use the Steam version or Darkplaces instead of EQS.
Before using the script, it is recommended that you read the ```readme.txt``` file located in the same directory as the script.
This script has been tested on Linux, macOS, FreeBSD, OpenBSD, and NetBSD. It may work on other UNIX-like systems as well.
If your system is not supported, the script will inform you and exit.
