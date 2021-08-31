local formatter = prequire("formatter")
if not formatter then
    return
end

formatter.setup({
    filetype = {
        lua = {
            function()
                return {
                    exe = "stylua",
                    args = { "--indent-type", "Spaces", "--indent-width", "4", "-" },
                    stdin = true,
                }
            end,
        },
    },
})
