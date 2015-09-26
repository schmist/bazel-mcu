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