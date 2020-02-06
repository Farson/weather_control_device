# weather_control_device
Control and manipulate environmental conditions in an formicarium or terrarium

![weather_control_device](weather_control_device.png)

# Hardware
+ Raspberry pi
+ 1-Wire temperature sensor DS18B20
+ terrarium Heating

# wiring
## temperature sensor
The temperature sensor has 3 Wires
+ Red -> +3.3V
+ Yellow -> Data
+ Black -> GND

wiring
+ connect the `Red` wire to pin 1
+ connect the `Yellow` wire to pin 7 (BCM port 4) see also https://pinout.xyz/pinout/1_wire
+ connect a 4,7KΩ resistor between the `Red` and the `Yellow` wire
+ connect the `Black` wire to one of the GND pins on the rasperry e.g. pin 9

## heater
For the Heater we use WiringPi https://pinout.xyz/pinout/wiringpi
We connect a relay capable of handling 240V to the pins
0, 2 and 3 (physical pin 11, 13, 15)

## fan
use pin 1 (BCM 18) (physical pin 12)

# install
* install Rasbian
* install Ruby via rbenv
* clone this repo
```
  git clone https://github.com/Farson/weather_control_device.git
  cd weather_control_device
```
* install gems `bundle install`

## Run
```
ruby weather_control.rb
```
