# [Rroll](https://rr.paulsen.ooo/)
A script-based web-tool for Linux to prank your friends by hiding Shortcuts that open Rickrolls

To use either:
- Download and Runt the script
- Visit [rr.paulsen.ooo](https://rr.paulsen.ooo/) and click the `Copy` button.
  - It will copy command into your clipboard
  - The Site will close itself
  - Just paste the command into any terminal

## Copies
This script works without root-privileges and makes `.desktop` files in `~/.config/autostart/`

## Raspberry Pi Pico

1. To setup the Raspberry Pi Pico you need to install CircuitPython on the device. To do so follow the instructions at Adafruit: https://learn.adafruit.com/getting-started-with-raspberry-pi-pico-circuitpython/circuitpython

2. Clone this repository and copy the content of the folder `rpi-pico` into the root folder of the Pico.

3. Now the script will execute on any Linux Computer you plug the Pico into.