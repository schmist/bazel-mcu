package(default_visibility = ["//visibility:public"])

filegroup(
    name = "empty",
    srcs = [],
)

filegroup(
    name = "toolchain",
    srcs = [
        ":cc-compiler-avr",
    ],
)

cc_toolchain(
    name = "cc-compiler-avr",
    all_files = ":empty",
    compiler_files = ":empty",
    cpu = "avr",
    dwp_files = ":empty",
    dynamic_runtime_libs = [":empty"],
    linker_files = ":empty",
    objcopy_files = ":empty",
    static_runtime_libs = [":empty"],
    strip_files = ":empty",
    supports_param_files = 0,
)