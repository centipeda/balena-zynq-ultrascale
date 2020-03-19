deviceTypesCommon = require '@resin.io/device-types/common'
{ networkOptions, commonImg, instructions } = deviceTypesCommon

module.exports =
  version: 1
  slug: 'marspm3-zynq7'
  state: 'experimental'
  aliases: [ 'mars-pm3' ]
  name: 'BalenaOS on Mars PM3 Board with ZX2 Module'
  arch: 'armv7hf'
  yocto:
    machine: 'marspm3-zynq7'
    arch: 'armv7hf'
    name: 'Zynq-7000 on Mars PM3'
    image: 'resin-image'
    fstype: 'resinos-img'
    version: 'yocto-warrior'
    deployArtifact: 'balena-image-mars-pm3.img'

  configuration:
    config:
      partition:
        primary: 1
      path: '/config.json'
