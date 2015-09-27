load("/tools/hex", "hex")

cc_binary (
    name = "app",
    copts = ["-mmcu=$(MCU)"],
    srcs = ["main.c"],
)

hex (
	name = "hex",
	src = ":app",
	show_size = 1,
)

genrule (
	name = "flash",
	srcs = [":hex"],
	outs = [ "avrdude.log" ],
	cmd = "avrdude -p $(MCU) -P $(COM) -c $(PROGR) -U flash:w:$(location :hex) -l $@",
	local = 1,
)