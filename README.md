# weather_control_device
Control and manipulate environmental conditions in an formicarium or terrarium

# Hardware
+ Raspberry pi
+ 1-Wire temperature sensor DS18B20
+ terrarium Heating



# wiring
The temperature sensor has 3 Wires
+ Red -> +3.3V
+ Yellow -> Data
+ Black -> GND

wiring
+ connect the `Red` wire to pin 1
+ connect the `Yellow` wire to pin 7 (BCM port 4) see also https://pinout.xyz/pinout/1_wire
+ connect a 4,7KΩ resistor between the `Red` and the `Yellow` wire
+ connect the Black wire to one of the GND pins on the rasperry e.g. pin 9
