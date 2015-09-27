# MCU workspace for bazel

to build the app and produce an elf file run

`bazel build //app --config 328p`

to convert the app elf file to a hex file run

`bazel build //app:hex --config 328p`

to flash the app to your device run

`bazel build //app:flash --config 328p`

You need to have avr-gcc installed. Change toolchain/CROSSTOOL to fit your installation path. To add support for a different AVR CPU, add a new config to tools/bazel.rc.