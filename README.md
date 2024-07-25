
# VCU Project for STM32F407VE with Simulink Coder

## Overview

This project involves the development of a Vehicle Control Unit (VCU) using the STM32F407VE microcontroller. The VCU is modeled in Simulink and uses Simulink Coder for code generation. The project integrates FreeRTOS for task management and includes various interfaces for CAN communication, injection and ignition control, and sensor measurements.

## Features

### Current Features
- **Microcontroller:** STM32F407VE
- **Real-Time Operating System:** FreeRTOS
- **Code Generation:** Simulink Coder

### Interfaces
1. **CAN Bus:**
   - 2x CAN Bus for vehicle network communication.
2. **Injectors:**
   - 8x Injector control for fuel management.
3. **Ignitions:**
   - 8x Ignition control for spark timing.
4. **USB OTG:**
   - USB On-The-Go for data transfer and configuration.
5. **Pressure Measurement:**
   - Oil pressure sensor.
   - Fuel pressure sensor.
6. **Battery Measurement:**
   - Battery voltage monitoring.

### Future Features
- **Modem 4G:** For mobile network communication.
- **Modem LoRaWAN:** For long-range wireless communication.
- **WiFi/Bluetooth:** Using ESP32C6 for wireless connectivity.
- **Display Interface:** For user interaction and data display.

## Getting Started

### Prerequisites
- MATLAB with Simulink and Simulink Coder
- STM32CubeMX for peripheral configuration
- STM32CubeIDE or any other preferred IDE for STM32 development
- FreeRTOS library

### Installation
1. Clone the repository to your local machine.
   ```bash
   git clone <repository-url>
   ```
2. Open the project in Simulink.
3. Configure the STM32 peripherals using STM32CubeMX and generate the code.
4. Integrate the generated code with the Simulink model.
5. Build and deploy the code to the STM32F407VE microcontroller.

### Configuration
1. **CAN Bus:**
   - Configure CAN1 and CAN2 in STM32CubeMX.
   - Set appropriate baud rates and filters.
2. **Injectors and Ignitions:**
   - Set up PWM channels for controlling injectors and ignitions.
3. **Sensors:**
   - Configure ADC channels for oil pressure, fuel pressure, and battery voltage measurements.
4. **USB OTG:**
   - Enable USB OTG in device mode in STM32CubeMX.
5. **FreeRTOS:**
   - Set up tasks and priorities in Simulink for real-time operation.

## Usage
1. Connect the STM32F407VE to your development PC using USB.
2. Flash the generated code onto the microcontroller.
3. Connect the CAN Bus, injectors, ignitions, and sensors to their respective interfaces.
4. Monitor and control the VCU through the USB OTG interface.

## Contributing
1. Fork the repository.
2. Create your feature branch.
   ```bash
   git checkout -b feature/AmazingFeature
   ```
3. Commit your changes.
   ```bash
   git commit -m 'Add some AmazingFeature'
   ```
4. Push to the branch.
   ```bash
   git push origin feature/AmazingFeature
   ```
5. Open a pull request.

## License
This project is licensed under the MIT License. See the LICENSE file for details.

## Contact
For further information or support, please contact [mampaito@gmail.com].


