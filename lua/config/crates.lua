local crates = prequire("crates")
if not crates then
    return
end

crates.setup({
    icons = {
        up_to_date = "",
        outdated = "",
    },
    unstable = true,
    autostart = false,
})
