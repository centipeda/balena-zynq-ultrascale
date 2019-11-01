deviceTypesCommon = require '@resin.io/device-types/common'
{ networkOptions, commonImg, instructions } = deviceTypesCommon

module.exports =
  version: 1
  slug: 'mars-zx2'
  state: 'experimental'
  aliases: [ 'zx2' ]
  arch: 'armv7hf'
  yocto:
    machine: 'zynq-generic'
    arch: 'armv7hf'
    name: 'Zynq-7000 Mars ZX2'
    image: 'resin-image'
    fstype: 'resinos-img'
    version: 'yocto-warrior'
    deployArtifact: 'balena-image-zx2.img'
    state: 'experimental'

  configuration:
    config:
      partition:
        primary: 1
      path: '/config.json'
