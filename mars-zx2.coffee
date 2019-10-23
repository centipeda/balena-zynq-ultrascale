deviceTypesCommon = require '@resin.io/device-types/common'
{ networkOptions, commonImg, instructions } = deviceTypesCommon

module.exports =
  version: 1
  slug: 'mars-zx2'
  state: 'experimental'
  aliases: [ 'zx2' ]
  arch: 'armv7hf'
  yocto:
    machine: 'mars-zx2'
    arch: 'armv7hf'
    name: 'Zynq-7000 Mars ZX2'
    image: 'balena-image'
    fstype: 'balenaos-img'
    version: 'yocto-warrior'
    deployArtifact: 'balena-image-zx2.img'
    state: 'experimental'

  configuration:
    config:
      partition:
        primary: 1
      path: '/config.json'
