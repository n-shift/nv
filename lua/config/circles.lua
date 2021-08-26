local present, circles = pcall(require, "circles")
if not present then
    return
end

circles.setup({
  icons = {
    empty = "",
    filled = "",
    lsp_prefix = ""
  },
  lsp = true
})
