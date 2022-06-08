filename = main


UNAME_S := $(shell uname -s)
ifeq ($(UNAME_S),Linux)
	PORT = /dev/ttyACM0
endif
ifeq ($(UNAME_S),Darwin)
	PORT = /dev/cu.usbmodem*
endif

main:
	arduino-cli compile --fqbn arduino:avr:uno $(filename).ino

upload:
	arduino-cli upload -p $(PORT) --fqbn arduino:avr:uno $(filename).ino 
