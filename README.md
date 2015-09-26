# MCU workspace for bazel

to build the app and produce an elf file run

`bazel build //app --cpu=avr`

to convert the app elf file to a hex file run

`bazel build //app:hex --cpu=avr`

to flash the app to your device run

`bazel build //app:flash --cpu=avr`

You need to have avr-gcc installed. Change toolchain/CROSSTOOL to fit your installation path. CPU type and clock speed and serial port can be specified in the build targets in app/BUILD.