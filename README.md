# intel-backlight

This is a simple script to change the brightness of the screen.

## Installation

The script needs `sudo` installed.
To install it direct from gitlab open a terminal and type:
```
git clone https://gitlab.com/flexw/intel-brightness.git
cd intel-brightness
cp intel-brightness /usr/bin/intel-brightness
```

## Usage

To use use this script without `sudo` you need to add this lines to `/etc/sudoers`.
Type `visudo` and then add these lines. Adjust `/path/to` to your needs.
```
ALL ALL = (ALL) NOPASSWD: /path/to/tee, /sys/class/backlight/intel_backlight/brightness
ALL ALL = (ALL) NOPASSWD: /path/to/cat, /sys/class/backlight/intel_backlight/max_brightness
ALL ALL = (ALL) NOPASSWD: /path/to/cat, /sys/class/backlight/intel_backlight/actual_brightness
```
