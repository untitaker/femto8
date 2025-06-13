## About

femto8 is an open-source reimplementation of the [PICO-8](https://www.lexaloffle.com/pico-8.php) fantasy console, designed specifically for embedded systems with smaller CPUs and less memory. It provides a platform to play PICO-8 games on devices with resource constraints, making it ideal for environments with limited hardware capabilities.

This fork has been adapted for the [TP-Link M7350](https://github.com/m0veax/tplink_m7350) so that it uses the device's framebuffer instead of SDL, no audio, and uses the console for input.

### Acknowledgment

This project has been significantly influenced by the work of [Jacopo Santoni](https://github.com/Jakz) on [retro8](https://github.com/Jakz/retro8), a PICO-8 emulator designed for desktop platforms. We would like to express our gratitude to Jacopo Santoni for his contributions and efforts on retro8, which has been an invaluable resource for the development of femto8.

### Key Features

- Written in C for optimal performance on embedded systems.
- Compact and resource-efficient design, suitable for devices with smaller CPUs and limited memory.

## Screenshots

![](/images/screenshot1.png)

![](/images/screenshot2.png)

![](/images/screenshot3.png)

### Building

To build femto8:

1. Clone the repository: `git clone https://github.com/benbaker76/femto8.git`
2. Navigate to the femto8 directory: `cd femto8`
3. Build a local binary: `make`

In order to cross-compile to ARMv7:

```
wget https://musl.cc/arm-linux-musleabi-cross.tgz
tar xvzf ./arm-linux-musleabi-cross.tgz
CC=./arm-linux-musleabi-cross/bin/arm-linux-musleabi-cc CXX=./arm-linux-musleabi-cross/bin/arm-linux-musleabi-g++ make 
```

### Usage

Run directly from root shell: `./femto8 cart.p8`

Controls:
- Arrow keys: Movement
- Z: Action 1 (O button)
- X: Action 2 (X button)  
- Q: Quit
