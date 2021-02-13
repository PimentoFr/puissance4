# Puissance4_ws2812

## Setup

Create a credentials.env and write some environnement variables as:
- `AUTH_TOKEN`: Twitch Token for the given User
- `USERNAME`: Twitch username


## Build Docker image

To build this docker image, launch
```
$ docker run --cap-add SYS_RAWIO --device /dev/mem -d test-ws2812
```

sudo docker run --cap-add SYS_RAWIO --privileged --device /dev/mem test-ws2812:v1

Since this library and the onboard Raspberry Pi audio both use the PWM, they cannot be used together. You will need to blacklist the Broadcom audio kernel module by creating a file /etc/modprobe.d/snd-blacklist.conf with

blacklist snd_bcm2835

Launch lsmod to see if the mod still be present. In this case, look this : https://github.com/jgarff/rpi_ws281x