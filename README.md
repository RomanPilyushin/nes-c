# NES Emulator 


## Introduction
​	The nes simulator implemented in C , requires `C11` or above



**Platform support:**

- [ ] Windows

- [x] Linux

- [ ] MacOS

**Simulator support：**

- [x] CPU

- [ ] PPU

- [ ] APU

**mapper  support：**

​	0, 2, 3, 7, 94, 117, 180

## Software Architecture
​	The example is based on SDL2 for image and sound output, without special dependencies, and you can port to any hardware by yourself


## Compile Tutorial

​	clone repository，install [xmake](https://github.com/xmake-io/xmake)，execute `xmake` directly to compile

### Compile Preparation

#### Linux(Ubuntu):

```shell
sudo add-apt-repository ppa:xmake-io/xmake -y
sudo apt-get update -y
sudo apt-get install -y git make gcc p7zip-full libsdl2-dev xmake
```

### Compilation Method

​	clone repository，execute `xmake` directly to compile

## Instructions

​	on linux or macos enter  `./nes xxx.nes` load the game to run

## Key mapping

| joystick |  up  | down | left | right | select | start |  A   |  B   |
| :------: | :--: | :--: | :--: | :---: | :----: | :---: | :--: | :--: |
|    P1    | `W`  | `S`  | `A`  |  `D`  |  `V`   |  `B`  | `J`  | `K`  |
|    P2    | `↑`  | `↓`  | `←`  |  `→`  |  `1`   |  `2`  | `5`  | `6`  |

**Note: P2 uses numberic keypad**

## Transplant instructions

​	The source code in the `inc`and `src` directories does not need to be modified, only the three files in the `port` directory `nes_conf.h` `nes_port.c` `nes_port.h`

- `nes_conf.h` is the configuration file, which can be configured according to your needs
- `nes_port.h` is the migrating header file, which usually only needs to be migrated nes_printf
- `nes_port.c is the main migration file, and all functions need to be migrated



​	**Note: If the target platform for migration has weak performance and small space, some macro configurations are specially reserved:**

- `NES_ENABLE_SOUND` can be set to 0 to turn off the APU to increase the running speed
- `NES_RAM_LACK` can be set to 1, using a half-screen refresh to reduce RAM consumption (running at a slower speed)
- You can configure `NES_FRAME_SKIP` to skip frames
- If SPI 8-byte transmission is used for embedded platforms, the color anomaly configuration `NES_COLOR_SWAP` can be used to switch the large and small ends



​	**In addition, the APU synthesis uses single floating-point calculations, and the code can optimize the single-floating-point calculation acceleration or not use single-floating-point calculations to speed up the operation in `nes_apu.c`**

## Showcase

**mapper 0:**

| ![Super Mario Bros](./docs/SuperMarioBros.png) | ![F1_race](./docs/F1_race.png) | ![Star Luster (J)](./docs/StarLuster(J).png) | ![Ikki (J)](./docs/Ikki(J).png) |
| :--------------------------------------------: | :----------------------------: | :------------------------------------------: | ------------------------------- |
|  ![Circus Charlie](./docs/CircusCharlie.png)   |                                |                                              |                                 |

**mapper 2:**


|  ![Contra1](./docs/Contra1.png)  | ![Castlevania](./docs/Castlevania.png) | ![Journey](./docs/Journey.png) | ![Lifeporce](./docs/Lifeporce.png) |
| :------------------------------: | :------------------------------------: | :----------------------------: | ---------------------------------- |
| ![mega_man](./docs/mega_man.png) |  ![Athena (J)](./docs/Athena(J).png)   |                                |                                    |

**mapper 3:**

| ![contra](./docs/MapleStory.png) | ![Donkey_kong](./docs/Donkey_kong.png) |
| :------------------------------: | :------------------------------------: |



**mapper 94:**

![Senjou no Ookami](./docs/Senjou_no_Ookami(J).png)

**mapper 180:**

![Crazy Climber](./docs/CrazyClimber(J).png)

## Literature reference

https://www.nesdev.org/



