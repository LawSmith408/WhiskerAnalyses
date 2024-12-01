# ARIADNE: Adhesive, Resonant Interface for Applying Directional Nudges Effectively
:star: [Link to preprint](https://papers.ssrn.com/sol3/papers.cfm?abstract_id=5006211)

This is a PlatformIO-based project for the ARIADNE vibrotactile motion guidance system.
For information on the hardware and to find the full bill of materials used in this project, please refer to https://doi.org/10.17617/3.X62OQZ.

Citation:  
Rokhmanova, Nataliya and Martus, Julian and Faulkner, Robert and Fiene, Jonathan and Kuchenbecker, Katherine J. and Administrator, Sneak Peek, ARIADNE: A Wearable Platform for Evaluating Vibrotactile Motion Guidance. Available at SSRN: https://ssrn.com/abstract=5006211 or http://dx.doi.org/10.2139/ssrn.5006211

## Features 

1. Control of DRV2605 (haptic drivers) over I2C.
2. BLE setup for wirelessly cueing vibration stimuli.
3. Streaming IIS3DWB accelerometer data via USB-CDC communication.
5. Working with the MAX1704X lithium-polymer battery gauge for battery life monitoring.
6. LED control functions.

## Hardware Requirements and Getting Started

Please refer to our hardware repository https://doi.org/10.17617/3.X62OQZ for additional material and resources.

## Getting Started

This project is developed using PlatformIO. To get started:

1. Clone the repository.
2. Open the project using the PlatformIO extension in Visual Studio Code or the PlatformIO IDE.
3. Ensure that the required hardware setup is assembled according to the schematic linked in the hardware repository above.
4. Update the pin definitions at the beginning of the script to reflect your hardware setup, if necessary.
5. Compile and flash your microcontroller with PlatformIO.

## User Guide
A comprehensive guide to using ARIADNE.

### Start Up
Upon starting the device, the LRA-drivers undergo an auto-calibration. Part of the calibration is a 1 second activation of both actuators. However, the resulting calibration values are only used in closed-loop mode; open-loop is the default, and the mode used in this implementation.  When the calibration routine is completed a blue LED indicates that the device is ready.

:bulb: Note: To verify the actuator modules are correctly connected, ensure that they both vibrate when powering-up ARIADNE.

### Stimulation 
When a vibration is triggered by setting a stimulation duration via the [BLE interface](#ble-interface), the corresponding [LRA Driver](#drv2605l-lra-driver) is enabled and the amplitude is transmitted via the I2C bus.
An internal timer keeps track of the duration and saves the stimulation timestamp relative to the acceleration time, when the acceleration recording mode is active; note that this is currently only possible via USB. 

:bulb: **Note:** While stimulation is active all other stimulation commands are ignored

:bulb: **Note:** Only one side can be active at a time.

#### DRV2605L LRA Driver
The two DRV2605L drivers each control an LRA. Both drivers are on the same I2C bus. Since they both have the same preprogrammed adress, their enable pins are used in lieu of a Chip-Select line. The DRV2604 driver variant has a customisable address, which can be considered for future custom implementations.

### BLE Interface
ARIADNE is controlled via Bluetooth low energy (BLE).
The device is advertised as "Ariadne" and acts as a BLE peripheral.
Under the ***Battery Control Service [UUID: 0x180]*** the ***Batttery Level Charachteristic [UUID: 0x2A19] (R uint8)*** can be read out for an estimate of the current battery percentage.
The ***LRA Control Service [UUID: 0x1111]*** contains characteristics relvant for stimulation control: The ***Amplitude Charactersitic [UUID: 0x1112] (R/W int8)*** is used to set the amplitude for both actuators. Negative values start the oscillation of the LRA in the oposite direction. The option to choose different amplitudes for each actuator is not presently supported but should be easy to implement.
A vibration event is triggered when setting the duration in milliseconds for one of the actuators (A/B) via the respective ***Duration Characteristic ([A: UUID: 0x 1114], [B: UUID: 0x1113] R/W uint16)***.  
Similarily, activating both actuators at the same time is not implemented.
While the vibration is active all LRA Control commands will be ignored.

```markdown
# BLE INTERFACE
Battery Control Service [UUID: 0x180]
    Batttery Level Charachteristic [UUID: 0x2A19] ((R) uint8) - Battery estimate in percent

LRA Control Service    [UUID: 0x1111] (R unit16)
    Amplitude Charactersitic    [UUID: 0x1112] ((R/W) int8) - Vibration amplitude Range -100%(@-128):100%(@127)
    Duration A Characteristic   [UUID: 0x1114] ((R/W) uint16) - Trigger vibration of Cuddle A 0:65535 ms
    Duration B Characteristic   [UUID: 0x1113] ((R/W) uint16) - Trigger vibration of Cuddle B 0:65535 ms
```

### Accelerometer recording
Acceleration recording operates via a USB Serial (Full Speed, USB-C port) connection and functions independently from the BLE. Each actuator module houses an IIS3DWB accelerometer capable of monitoring accelerations up to 16G. It captures motion data along the normal axis (the same axis as the vibration) at a rate of 26.7kHz and a bandwidth of 6.3kHz. These data are then stored in an internal FIFO buffer. The microcontroller periodically retrieves these data and transmits them to the host PC using a USB-Serial interface. To convert the raw accelerometer data to gravitational units, divide each datum by 65535.

#### USB-Serial interface
The USB-Serial interface starts and stops the recording of accelerometer data. Furthermore, it transmits the timestamps of vibration events while the recording is active. Any message sent to ARIADNE via USB will toggle the accelerometer recording mode. For further clarification, error messages and device statuses are logged and communicated via USB. For more detailed information about these messages, refer to the [Device Status LEDs](#device-status-leds) section.


#### Accelerometer Data Frame
| Accelerometer Data Header (3Bytes) | Device Identifier (1Byte) | Data Frame Length n (2Bytes) | Acceleration Data (n*2 Bytes)|
|--- |--- |--- |--- |
| "ACC" | 'A' or 'B' | uint16 (length of the data frame) | n*int16 |

#### Vibration Events
| Vibration Timestamp Header (8 Bytes) | Timestamp (4Byte)| 
|--- |--- |
| "STIMTIME" | unsigned long in ms |


### Device Status LEDs
A blue LED indicates the state of the device. When the device is turned on the LED will slowly pulse. Once a successful connection has been established through the [BLE interface](#ble-interface), the LED will maintain a steady glow. 

```markdown
# BLUE LED pattern:
- Off: device is turned off or ran out of battery
- Pulsing: Device is active and waiting for a BLE connection 
- On: Sucessful BLE connection established
```

A second orange LED indicates errors. Each error is logged via USB. Blue ANSI indicates Stimulation related errors, while red ANSI indicates accelerometer related errors. The following errors cause the orange LED to light up:

```markdown
# Orange LED indicator:
Stimulation:
The following errors are related to stimulation via the BLE interface:
- New amplitude set while a stimulation is active
    - LOG: BLE-Interface: COMMAND IGNORED: Device still running
    - TS: Make sure not to change the amplitude during an active stimulations 

Accelerometer recording mode:
The following errors can occur when streaming accelerometer data via USB:

- One or both accelerometers could not be detected in *accelerometer-recording mode*.
    - USB LOG: Device '*Device_ID*' could not be found.
    - TS: Make sure the ribbon cables are securely attached. Inspect damage of cables and connectors
- One of the accelerometer fifos has been overrun. 
    - USB LOG: Device '*Device_ID*' - fifo overrun.
    - TS: This results in a data loss and indicates some issue with streaming the data via USB.
```

### Battery Charging
The integrated battery can be charged via the USB-C port. Make sure that the switch is turned ON. A red LED next to the USB port indicates that the battery is being charged.
An estimate of the battery level can be read out via the [BLE interface](#ble-interface). 

:bulb: **Note:** The battery level is just an estimate. It does not take battery age and lifespan into account.
 
## Python implementation

We provide a sample Python script. ***BasicARIADNEcontrol.py*** enables the host computer running the script to connect to ARIADNE via BLE and trigger alternating vibrations to the two actuator modules, once per second. 

## MATLAB dynamic modeling

We also provide a MATLAB script that implements a model of an actuator module vibrating on the skin (***ARIADNE_model.m***), represented as a lumped parameter double spring-mass-damper system (***double_SDS.m***). The model output is then compared to sample experimental data (***dataExp***). 


## Disclaimer

This codebase is intended for developers and not meant for direct use in a production environment. It should serve as a starting point to develop applications suited to specific requirements. Please ensure to test and modify the code as necessary.

## Support 

Please note that this codebase doesn't come with direct support, but feel free to contact us.

## License

Please refer to the LICENSE file included with this project for information about the license.
    
## Contributing 

Please feel free to contribute improvements or report issues.

## Note: 

If you encounter any problems or questions about specific parts of the codebase, don't hesitate to raise an issue. Always provide as much context as possible.
