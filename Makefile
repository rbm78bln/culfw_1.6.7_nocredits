default: all

all: compile

clean:
	sudo docker container rm -f culfw-builder
	sudo docker image rm -f rbm78bln/culfw-builder

compile: clean
	sudo docker build -t rbm78bln/culfw-builder .
	sudo docker run --name culfw-builder --rm -v .:/culfw --tty --interactive rbm78bln/culfw-builder
	sudo docker image rm -f rbm78bln/culfw-builder

flash_culv3: compile
	sudo dfu-programmer atmega32u4 erase
	sudo dfu-programmer atmega32u4 flash Devices/CUL/CUL_V3.hex
