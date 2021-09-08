local saga = prequire("lspsaga")
if not saga then
    return
end

saga.init_lsp_saga({
    finder_action_keys = {
        open = "i",
        vsplit = "v",
        split = "s",
        quit = "q",
        scroll_down = "<C-f>",
        scroll_up = "<C-b>", -- quit can be a table
    },
})

saga.init_lsp_saga()
