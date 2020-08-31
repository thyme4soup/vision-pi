# vision-pi
livestream with a computer vision overlay for playing with raspi computer vision

## Sources

This combines the work of [Miguel Grinberg](https://github.com/miguelgrinberg/flask-video-streaming) and [Adrian Rosebrock](https://www.pyimagesearch.com/2017/10/16/raspberry-pi-deep-learning-object-detection-with-opencv/) into a simple tool for testing computer vision overlays on a headless raspi (hence the need for a stream)

## Usage

### TLDR

Install the requirements, be sure your camera is enabled via raspi-config, and you're good to go! You may find [this guide](https://www.pyimagesearch.com/2019/09/16/install-opencv-4-on-raspberry-pi-4-and-raspbian-buster/) helpful for miscellaneous libs cv relies on, including a fast fortran backend for matrix math.

To run:
`python3 app.py`

Then open a webpage pointed at your pi on port 5000. It might look like this:
`http://raspberrypi.local:5000/`

### Running on startup

You may want this to run on startup, in that case be sure to `chmod +x startup.sh` once you've cloned and cd'd into the repo. Then, modify your rc.local to run the script on startup `sudo nano /etc/rc.local`. It will look something like this:
```
#!/bin/sh -e

# Print the IP address
_IP=$(hostname -I) || true
if [ "$_IP" ]; then
  printf "My IP address is %s\n" "$_IP"
fi

/home/pi/vision-pi/startup.sh

exit 0
```

Note that the script will pull the repo and install requirements.txt as well. You can edit this to your needs.
