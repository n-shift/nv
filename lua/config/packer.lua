vim.cmd("packadd packer.nvim")

local packer = prequire("packer")
if not packer then
    local path = table.concat({ vim.fn.stdpath("data"), "/site/pack/packer/opt/packer.nvim" })
    print("Cloning packer...")
    vim.fn.delete(path, "rf")
    vim.fn.system({
        "git",
        "clone",
        "https://github.com/wbthomason/packer.nvim",
        "--depth",
        "5",
        path,
    })

    vim.cmd("packadd packer.nvim")
    packer = prequire("packer")

    if packer then
        print("Packer cloned successfully.")
    else
        error(table.concat({ "Could not clone packer.\nPacker path:", path }))
    end
end

packer.reset()

packer.init({
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
})

return packer
