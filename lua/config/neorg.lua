local neorg = prequire("neorg")
if not neorg then
    return
end

neorg.setup({
    load = {
        ["core.defaults"] = {},
        ["core.norg.concealer"] = {},
        ["core.norg.dirman"] = {
            config = {
                workspaces = {
                    my_workspace = "~/neorg",
                },
            },
        },
        ["core.keybinds"] = {
            config = {
                default_keybindins = true,
                neorg_leader = "<leader>o",
            },
        },
    },
})
