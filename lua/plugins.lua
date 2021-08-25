local present_packer, packer = pcall(require, "packer")
local present_config, config = pcall(require, "config.packer")

if not present_packer then return end
if not present_config then return end

packer.reset()

packer.startup({function()
    -- SELF-MANAGEMENT
    use 'wbthomason/packer.nvim'

    -- COLORS

    -- bunch of colorschemes with treesitter support
    use {
        'Pocco81/Catppuccino.nvim',
        event = "VimEnter",
        config = function() require("config.colorscheme") end
    }

    -- better text highlighting
    use {
        'nvim-treesitter/nvim-treesitter',
        event = "BufRead",
        config = function() require("config.treesitter") end,
        run = ':TSUpdate'
    }
    
    -- TEXT

    -- text formatter
    use {
        'sbdchd/neoformat',
        cmd = "Neoformat"
    }

    -- TPOPE SECTION

    -- quickly deal with pairs of ...
    use {
        'tpope/vim-surround',
        event = "BufEnter"
    }	

    -- UTILS

    -- collection of useful lua functions
    use {
        'nvim-lua/plenary.nvim'
    }

    -- powerful keybindings creation
    use {
        'LionC/nest.nvim'
    }

    -- fuzzy finder
    use {
        'nvim-telescope/telescope.nvim',
        cmd = "Telescope",
        config = function() require("config.telescope") end
    }
    
    -- GIT

    -- git diff signs
    use {
        'lewis6991/gitsigns.nvim',
        requires = { 'nvim-lua/plenary.nvim' },
        config = function() require("config.gitsigns") end,
        cond = function() return vim.fn.isdirectory(".git") == 1 end
    }

    -- LOCAL PLUGINS

    -- Cargo.toml utils
    use {
        '~/.code/lua/crates.nvim',
        config = function() require("config.crates") end
    }

    -- INTEGRATIONS

    -- manage DRPC
    use {
        'andweeb/presence.nvim',
        cmd = "RPC",
        config = function() require("config.presence") end
    }

    -- COMPLETION

    -- completion engine
    use {
        'hrsh7th/nvim-cmp',
        event = "InsertEnter",
        requires = {
            {'hrsh7th/cmp-buffer', after = 'nvim-cmp'},
            {'hrsh7th/cmp-nvim-lua', after = 'nvim-cmp'},
            {'hrsh7th/cmp-nvim-lsp', after = 'nvim-cmp'},
        }
    }

    -- LSP

    -- lsp configuration
    use {
        'neovim/nvim-lspconfig',
        event = "BufRead",
        config = function() require("lsp") end
    }
    
    -- rust lsp defaults
    use {
        'simrat39/rust-tools.nvim',
        requires = {
            "neovim/nvim-lspconfig",
            "nvim-lua/plenary.nvim",
            "nvim-lua/popup.nvim",
            "mfussenegger/nvim-dap",
        },
        event = "BufRead,BufNewFile *.rs",
        config = function() require("config.rust") end
    }

end,
config = config
})
