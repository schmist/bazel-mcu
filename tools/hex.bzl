def _impl(ctx):
    output = ctx.outputs.out
    input = ctx.file.src
    objcopy = ctx.fragments.cpp.objcopy_executable
    size_cmd = ""
    avr_cpu = ctx.attr.avr_cpu
    if ctx.attr.show_size:
        size_cmd = "avr-size -C --mcu=%s %s" % (avr_cpu, input.path)

    ctx.action(
        inputs=[input],
        outputs=[output],
        progress_message="Creating HEX binary from %s" % input.short_path,
        command="%s -j .text -j.data -O ihex %s %s; %s" % (objcopy, input.path, output.path, size_cmd))

hex = rule(
    implementation=_impl,
    fragments=["cpp"],
    attrs={
        "src": attr.label(mandatory=True, allow_files=True, single_file=True),
        "show_size": attr.bool(mandatory=False, default=False),
        "avr_cpu": attr.string(mandatory=True),
    },
    outputs={"out": "%{src}.hex"},
)