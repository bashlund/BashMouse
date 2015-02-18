# BashMouse
Control your X mouse pointer with this bash script.
##Installation
This tool depends on *xdotool*, install it with `sudo apt-get install xdotool`
```sh
$ git clone https://github.com/thomasbacklund/BashMouse.git
```
##Usage
`./mouse.sh [right|left|up|down|click|click_m|click_r] [pixels]`
```sh
$ cd BashMouse
$ ./mouse.sh up 33  # Moves mouse pointer 33 pixels upwards
$ ./mouse.sh click  # Simulates a left click
$ ./mouse.sh click_r  # Simulates a right click
```
##Keyboard shortcuts
Put `mouse.sh` in your bash PATH, or refer to its absolute path when defining custom keyboard shortcuts in your X setup.

I use `Ctrl-Alt-h/j/k/l` for left/down/up/right, just as in Vim. Then `Ctrl-Alt-g` for left click and `Ctrl-Alt-;` for right click.

How to setup keyboard shortcuts depends on what X window manager you are using. Google it.
