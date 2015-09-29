load("/tools/hex", "hex")

cc_binary (
    name = "app",
    copts = ["-mmcu=$(MCU)"],
    linkopts = ["-mmcu=$(MCU)"],
    srcs = ["main.c"],
)

hex (
	name = "hex",
	src = ":app",
	avr_cpu = "atmega328p",
	show_size = 1,
)

genrule (
	name = "flash",
	srcs = [":hex"],
	outs = [ "avrdude.log" ],
	cmd = "avrdude -p $(MCU) -P $(COM) -c $(PROGR) -U flash:w:$(location :hex) -l $@",
	local = 1,
)