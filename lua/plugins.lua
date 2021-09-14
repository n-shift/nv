-- load packer
local packer = prequire("config.packer")

if not packer then
    return
end

-- specify plugins and config
packer.startup(function(use)
    -- SELF-MANAGEMENT
    use 'wbthomason/packer.nvim'

    -- COLORS

    -- bunch of colorschemes with treesitter support
    use {
        'Pocco81/Catppuccino.nvim',
        event = 'VimEnter',
        config = function() require('config.colorscheme') end,
    }

    -- better text highlighting
    use {
        'nvim-treesitter/nvim-treesitter',
        config = function() require('config.treesitter') end,
        run = ':TSUpdate',
    }

    -- statusline
    use {
        'hoob3rt/lualine.nvim',
        requires = {
            'kyazdani42/nvim-web-devicons'
        },
        config = function() require('config.statusline') end,
    }

    -- TEXT

    -- text formatter
    use {
        'mhartington/formatter.nvim',
        config = function() require('config.formatter') end,
        cmd = 'Format',
    }

    use {
        'nvim-neorg/neorg',
        config = function() require('config.neorg') end,
        after = "nvim-treesitter",
    }

    -- TPOPE SECTION

    -- quickly deal with pairs of ...
    use {
        'tpope/vim-surround',
        event = 'BufEnter',
    }

    -- UTILS

    -- collection of useful lua functions
    use {
        'nvim-lua/plenary.nvim',
    }

    -- powerful keybindings creation
    use {
        'LionC/nest.nvim',
    }

    -- fuzzy finder
    use {
        'nvim-telescope/telescope.nvim',
        cmd = "Telescope",
        config = function() require('config.telescope') end,
    }

    -- dashboard on VimEnter
    use {
        'glepnir/dashboard-nvim',
        config = function() require('config.dashboard') end,
    }

    -- file manager
    use {
        'kyazdani42/nvim-tree.lua',
        config = function() require('config.nvimtree') end,
        requires = 'kyazdani42/nvim-web-devicons',
        after = 'Catppuccino.nvim',
    }

    -- keybinding suggestions
    use {
        'folke/which-key.nvim',
        config = function() require('config.whichkey') end,
    }

    -- GIT

    -- git diff signs
    use {
        'lewis6991/gitsigns.nvim',
        requires = { 'nvim-lua/plenary.nvim', },
        config = function() require('config.gitsigns') end,
        cond = function() return vim.fn.isdirectory('.git') == 1 end,
    }

    -- COMPLETION

    -- completion engine
    use {
        'hrsh7th/nvim-cmp',
        requires = {
            { 'hrsh7th/cmp-buffer', after = 'nvim-cmp', },
            { 'hrsh7th/cmp-nvim-lsp', after = 'nvim-cmp', },
            { 'saadparwaiz1/cmp_luasnip', after = 'LuaSnip', },
        },
        config = function() require('config.cmp') end,
    }

    -- snippets
    use {
        'L3MON4D3/LuaSnip',
    }

    -- LSP

    -- lsp configuration
    use {
        'neovim/nvim-lspconfig',
        config = function()
            require('lsp')
            vim.defer_fn(function()
                vim.cmd("silent! e%")
            end, 0)
        end,
        after = 'cmp-nvim-lsp',
    }

    -- great ui for lsp
    use {
        'glepnir/lspsaga.nvim',
        after = 'nvim-lspconfig',
        config = function() require('config.lspsaga') end,
    }

    -- lua lsp defaults
    use {
        'folke/lua-dev.nvim',
        ft = {'lua'},
    }

end
)
