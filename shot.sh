#! /bin/bash
# Take a screenshot using the android debug bridge
DATE=$(date +%Y-%m-%d_%H:%M:%S)
adb shell screencap -p /sdcard/pictures/screenshot_01.png
adb pull /sdcard/pictures/screenshot_01.png ${PWD}/screenshots/shot_${DATE}.png
