# AetherPhylax 

## Tiny Energy Harvesting Environment Monitior 
![image](https://github.com/LukaJer/AetherPhylax/assets/13017970/f9a967a2-f1cd-41de-9853-1784f9c7d0cf)

### Hardware Desctiption:  
- uC: STM32G071
- LoRa Module: RFM95
- power management: BQ25570 (<5.5V)
- I2C 
- 1 GPIO: (PA0 (int0))
- JST ZH 1.5mm connectors
- 1.27mm header for for programming and debugging (SWD+UART)
#### Detailed Description  
It's centered around a STM32G071 microcontroller and uses LoRa for efficient and longish range communication. Currently it sends to a custom Gateway which forwards the data to a MQTT server but the code can be easily adapted to use another LoRa infrastructure like The Things Network. The LoRa Module is a RFM95.  
A 18650 cell (other Li Ion batterys can be used too) is used for power  which is charged  by a TI BQ25570 which harvests energy from a solar panel. The uC can read the solar and battery voltage.  
There is 1 GPIO available (PA0 (int0)) and a I2C bus. The GPIO has a footprins for a pull-up/-down resistor or capacitor and 3V3 and GND connections next to them. JST ZH 1.5mm connectors are used and a 1.5mm pinout is present for programming and debugging (SWD+UART).

### Software Description:
The project is written in Arduino.  
Each Station has it's own name so multiple can be used on a single Gateway. 
The station wakes up in specified Intervalls (2min) and checks if any of the sensor values have changed, if so it sends the data as a JSON to the Gatway. The data is send every 10th wakeup no matter the values as a heartbeat. 
Currently
- Bosch BME280
- Sensiron SHT31
- Lacrosse TX23
- MaXIM DS18B20
- generic simple rain sensor
are implemented an can be enabled by uncommenting code.
