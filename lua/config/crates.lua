local present, crates = pcall(require, "crates")
if not present then
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
