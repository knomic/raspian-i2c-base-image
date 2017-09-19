# raspian-i2c-base-image
This repository contains information about a basic docker image for developing i2c applications in python on a Raspberry Pi

# I2C on Pi
## Configuration

I2C is not turned on by default. We have to use raspi-config to enable it.

- Run `sudo raspi-config`
- Select `9 Advanced Options` with down arrow
- Go to `A7 I2C`
- Select `yes` when it asks you to enable I2C
- Another time hit `yes` when it tasks about automatically loading the kernel module.
- Select the `<Finish>` button with right arrow
- Last time `yes` when it asks to reboot or reboot your raspi by your own.

# Dockerize your Development
## Build docker

`docker build -t raspian-i2c-base .`

## Run docker image

Only expose i2c-1 to container
`docker run -it --device /dev/i2c-1 raspian-i2c-base`

Remove all restrictions from container
`docker run --privileged -it raspian-i2c-base`

# Kodos / Links

- https://blog.alexellis.io/getting-started-with-docker-on-raspberry-pi/
- https://stackoverflow.com/questions/40265984/i2c-inside-a-docker-container
- https://github.com/hypriot/rpi-iojs/issues/1
- https://dummdida.tumblr.com/tagged/modprobe
- https://github.com/nebrius/raspi-io/issues/27
- https://github.com/lojzik/rpi-dockerfiles
