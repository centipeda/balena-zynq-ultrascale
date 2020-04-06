# balena-zynq

The goal of this repository is to run [BalenaOS](https://www.balena.io/os/) on the [Enclustra Mars PM3 base board](https://www.enclustra.com/en/products/base-boards/mars-pm3/). More generally, it aims to run BalenaOS on any Zynq-7000-based device. Since this repository was created according to the official Balena guidelines on "supporting your own board," I recommend that you read [their documentation](https://www.balena.io/os/docs/custom-build/) first.

## Repository Structure
```
/
|\__ balena-yocto-scripts
|\__ build
|\__ layers
|\__ marspm3-zynq7.coffee
|\__ marspm3-zynq7.json
|\__ zynq-generic.coffee
\___ zynq-generic.json
```

* `balena-yocto-scripts` is a git submodule pointing to https://github.com/balena-os/balena-yocto-scripts. This repository contains helper scripts written by [balena](https://balena.io) for building BalenaOS. Most useful to use at the moment is BARYS, which will be discussed in more detail further down.
* `build` will be the BitBake build directory, created when a build is started.
* `layers` is the directory holding the Yocto layers for the build. Most of these layers are git submodules, with the exception of `meta-balena-zynq` and `meta-marspm3-zynq7`.
* The `.coffee` files are configuration files created for the BARYS build script. The `.coffee` files are intended to be manually created, according to the format detailed in [the BalenaOS documentation](https://www.balena.io/os/docs/custom-build/).
* The `json` files are created by BARYS, and are used by BalenaOS when creating the config.json files used in the final deployment.

## Setup

Since most of the Yocto layers used in this build are git submodules, run 
```
git submodule update --init --recursive
```
after cloning this repository to actually download the code for each of the layers.

## Building

### BARYS

To use BARYS to build BalenaOS, first move to the root project directory (in the case of this repository, the top-level directory). BARYS assumes you are running it from a directory two levels higher than itself, so it must be run from there.Then run `./balena-yocto-scripts/build/barys -m [machine]`. For example, to initiate a build for the Mars PM3 board defined in `layers/meta-marspm3-zynq7`, run 
```
./balena-yocto-scripts/build/barys -m marspm3-zynq7
```

The [official balena documentation](https://www.balena.io/os/docs/custom-build/) directs users to use BARYS for generating new BalenaOS builds. Since the main functionality of BARYS wrapping BitBake commands, it's possible to use BitBake directly for more granular tasks such as debugging broken recipes. BARYS also performs other miscellaneous setup tasks such as validating the `<machine>.coffee` files and generating the BalenaOS configuration files, though so it's probably a good idea to run it at least once for a build.

### BitBake

BalenaOS uses the [Yocto Project](https://www.yoctoproject.org/) to build, so BitBake can be used directly to perform a BalenaOS build. First, to set up the Yocto environment, run 
```
source layers/poky/oe-init-build-env
```
If the environment sets up correctly, a message should show along the lines of:
```
  _           _                   ___  ____
 | |__   __ _| | ___ _ __   __ _ / _ \/ ___|
 | '_ \ / _` | |/ _ \ '_ \ / _` | | | \___ \
 | |_) | (_| | |  __/ | | | (_| | |_| |___) |
 |_.__/ \__,_|_|\___|_| |_|\__,_|\___/|____/

 -------------------------------------------- 

Resin specific images available:
        resin-image

BalenaOS on Mars PM3 Board with ZX2 Module (EXPERIMENTAL) : $ MACHINE=marspm3-zynq7 bitbake resin-image
BalenaOS on Zynq-7000 (EXPERIMENTAL)     : $ MACHINE=zynq-generic bitbake resin-image
```

Then, `export` the `$MACHINE` environment variable so that it is the name of the machine you wish to build for:
```
export MACHINE=marspm3-zynq7
```
The name of the Yocto package BalenaOS provides is named `resin-image`, so to build BalenaOS for the machine in `$MACHINE`, run
```
bitbake resin-image
```

## Functionality

The bulk of the configuration performed by this repository is performed in the two custom Yocto layers, `layers/meta-balena-zynq` and `layers/meta-marspm3-bsp`. See their READMEs:

* [meta-balena-zynq](./layers/meta-balena-zynq/README.md)
* [meta-marspm3-bsp](./layers/meta-marspm3-bsp/README.md)
