load("/tools/hex", "hex")

cc_binary (
    name = "app",
    copts = ["-mmcu=atmega328p", "-Os", "-DF_CPU=16000000"],
    srcs = ["main.c"],
)

hex (
	name = "hex",
	src = ":app",
)

genrule (
	name = "flash",
	srcs = [":hex"],
	outs = [ "avrdude.log" ],
	cmd = "avrdude -p atmega328p -P /dev/ttyUSB0 -c arduino -U flash:w:$(location :hex) -l $@",
	local = 1,
)