## Patched culfw firmware for CUN/CUL devices<br>without rf duty cycle restrictions
This is version 1.6.7 of culfw without rf duty cycle restrictions.

### Compiling
This is ancient code to be compiled with just-as-ancient avr-gcc v4.8.1. <br>
It compiles perfectly using ancient Ubuntu 15.10 "Wily Werewolf". <br>
You will need the packages:
- ```make```
- ```binutils-avr```
- ```gcc-avr```
- ```avr-libc```

### Compiling with docker
Since compiling this ancient stuff is a pita, it can be compiled much more simple using:

```
make all
```

This builds a docker image, runs it as a container, and cleans up everything afterwards.

### Precompiled hex-files
In ```Devices/``` you can find precompiled (hex-)binaries for your devices.

### Flashing
After compiling you can flash your freshly compiled hex-file (e.g. for the CULv3) using:

```
dfu-programmer atmega32u4 erase
dfu-programmer atmega32u4 flash Devices/CUL/CUL_V3.hex
```

Running ```make flash_culv3``` basically does the same thing.

### Disclaimer
This is an experimental firmware and it should only be used in a shielded laboratory from which no radio waves can escape. It should only ever be used for short-term testing purposes and should never be used in a productive environment. Using this firmware may result in regulatory violations.

### Thanks to others
- Thanking [Rudolf Koenig](http://www.koeniglich.de/) and [Dirk Tostmann](https://github.com/tostmann) for their [culfw](http://culfw.de/culfw.html) firmware with its [latest version](https://github.com/tostmann/culfw) 1.6.7.
- Special thanks also goes to [Matthew Wire](https://www.mjwconsult.co.uk/en/), who [removed the duty cycle restrictions](https://blog.mjwconsult.co.uk/modifying-cul-firmware-to-increase-send-limit-for-eq3-max-heating-thermostats/) on [culfw version 1.6.6](https://github.com/mattwire/culfw).

#### Copyright
- Copyright Rudolf Koenig, 2008,2009,2010,2011
- Copyright Matthew Wire, 2014,2016

#### License: GPL v2

![Ralf Miunske](https://miunske.eu/github/?culfw_nocredits)
