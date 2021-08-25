return {
    display = {
        open_fn = function()
            return require("packer.util").float({ border = "single" })
        end,
        prompt_border = "single",
    },
    profile = {
        enable = true,
    },
    compile_on_sync = true,
}
