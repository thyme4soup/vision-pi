#!/bin/bash
cd /home/pi/vision-pi/ && /usr/bin/git pull && /usr/bin/pip3 install -r requirements.txt
/usr/bin/python3 /home/pi/vision-pi/app.py &
