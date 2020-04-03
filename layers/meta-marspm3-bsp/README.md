# meta-marspm3-bsp

This layer provides hardware support for the [Enclustra Mars PM3 base board](), where this build of BalenaOS will be tested.


## Directory Structure
```
layers/meta-marspm3-bsp/
├── README.md
├── conf
│   ├── bblayers.conf
│   ├── layer.conf
│   └── machine
│       ├── mars-pm3.dtb
│       ├── mars-pm3.dtsi
│       └── marspm3-zynq7.conf
├── recipes-bsp
│   ├── bootbin
│   │   ├── files
│   │   │   ├── download-marspm3-zynq7.bit
│   │   │   ├── fsbl-marspm3-zynq7.elf
│   │   │   ├── system_top.bit
│   │   │   └── zynq_fsbl.elf
│   │   └── xilinx-bootbin_%.bbappend
│   ├── bootgen
│   │   └── bootgen-native_git.bb
│   ├── device-tree
│   │   ├── device-tree.bbappend
│   │   └── files
│   │       ├── mars-pm3.dtb
│   │       └── marspm3.dtsi
│   ├── hdf
│   │   ├── external-hdf.bbappend
│   │   └── files
│   │       └── system_top.hdf
│   └── u-boot
│       ├── files
│       │   ├── marspm3-zynq7-platform-auto.h
│       │   ├── marspm3-zynq7-platform-top.h
│       │   └── marspm3-zynq7.dtb
│       ├── u-boot-xlnx
│       │   └── bootgen-native_v2019.2.bb
│       └── u-boot-xlnx_%.bbappend
└── recipes-kernel
    └── linux
        ├── linux-xlnx
        │   ├── user_2019-10-04-11-26-00.cfg
        │   └── user_2019-10-07-13-05-00.cfg
        └── linux-xlnx_%.bbappend
```

## Rationale

The main concern of this layer is providing a `$MACHINE` which can be provided to BitBake as a hardware target for BalenaOS's `resin-image` package. 