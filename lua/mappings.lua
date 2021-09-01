local nest = prequire("nest")
if not nest then
    return
end

local escapes = {
    { mode = "i", { "jk", "" } },
    { mode = "t", { "jk", "" } },
}

local leader = {
    prefix = "<leader>",
    { "l", "<cmd>luaf%<cr>" },
    { "q", "<cmd>Format<cr>" },
}

local packer = {
    prefix = "<leader>p",
    { "i", "<cmd>PackerInstall<cr>" },
    { "S", "<cmd>PackerSource<cr>" },
    { "s", "<cmd>PackerSync<cr>" },
    { "u", "<cmd>PackerUpdate<cr>" },
    { "c", "<cmd>PackerCompile<cr>" },
    { "p", "<cmd>PackerProfile<cr>" },
    { "t", "<cmd>PackerStatus<cr>" },
    { "d", "<cmd>PackerClean<cr>" },
    { "o", "<cmd>PackerConfig<cr>" },
}

local telescope = {
    prefix = "<leader>t",
    { "t", "<cmd>Telescope<cr>" },
    { "f", "<cmd>Telescope fd<cr>" },
    { "b", "<cmd>Telescope buffers<cr>" },
    { "g", "<cmd>Telescope live_grep<cr>" },
    { "h", "<cmd>Telescope command_history<cr>" },
}

local n_gitsigns = {
    prefix = "<leader>h",
    { "s", "<cmd>lua require('gitsigns').stage_hunk()<cr>" },
    { "u", "<cmd>lua require('gitsigns').undo_stage_hunk()<cr>" },
    { "r", "<cmd>lua require('gitsigns').reset_hunk()<cr>" },
    { "R", "<cmd>lua require('gitsigns').reset_buffer()<cr>" },
    { "p", "<cmd>lua require('gitsigns').preview_hunk()<cr>" },
    { "b", "<cmd>lua require('gitsigns').blame_line(true)<cr>" },
    { "S", "<cmd>lua require('gitsigns').stage_buffer()<cr>" },
    { "U", "<cmd>lua require('gitsigns').reset_buffer_index()<cr>" },
}

local v_gitsigns = {
    prefix = "<leader>h",
    mode = "v",
    { "s", "<cmd>lua require('gitsigns').stage_hunk({vim.fn.line('.'), vim.fn.line('v'))})<cr>" },
    { "r", "<cmd>lua require('gitsigns').reset_hunk({vim.fn.line('.'), vim.fn.line('v'))})<cr>" },
}

local n_openbrowser = { options = { noremap = false }, { "gx", "<Plug>(openbrowser-open)" } }
local v_openbrowser = { options = { noremap = false }, mode = "v", { "vx", "<Plug>(openbrowser-open)" } }

nest.applyKeymaps(escapes)
nest.applyKeymaps(packer)
nest.applyKeymaps(leader)
nest.applyKeymaps(telescope)
nest.applyKeymaps(n_gitsigns)
nest.applyKeymaps(v_gitsigns)
nest.applyKeymaps(n_openbrowser)
nest.applyKeymaps(v_openbrowser)

nest.applyKeymaps({"<leader>gh", "<cmd>call Github()<cr>"})
nest.applyKeymaps({"<leader>m", "<cmd>split | terminal<cr>"})
