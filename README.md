# MCU workspace for bazel

to build the app and produce an elf file

`bazel build //app --cpu=avr`

to convert the app elf file to a hex file

`bazel build //app:hex --cpu=avr`

You need to have avr-gcc installed. Change toolchain/CROSSTOOL to fit your installation path. CPU type and clock speed can be specified in the build target in app/BUILD.