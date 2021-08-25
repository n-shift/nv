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
        config = function() require("config.colorscheme") end
    }

    -- better text highlighting
    use {
        'nvim-treesitter/nvim-treesitter',
        config = function() require("config.treesitter") end,
        run = ':TSUpdate'
    }
    
    -- TEXT

    -- text formatter
    use {
        'sbdchd/neoformat'
    }

    -- TPOPE SECTION

    -- quickly deal with pairs of ...
    use {
        'tpope/vim-surround'
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
        config = function() require("config.telescope") end
    }
    
    -- GIT

    -- git wrapper
    use {
        'TimUntersberger/neogit',
        requires = { 'nvim-lua/plenary.nvim' },
    }

    -- git diff signs
    use {
        'lewis6991/gitsigns.nvim',
        requires = { 'nvim-lua/plenary.nvim' },
        config = function() require("config.gitsigns") end
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
        config = function() require("config.presence") end
    }

    -- COMPLETION

    -- completion engine
    use {
        'hrsh7th/nvim-cmp',
        requires = {
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-nvim-lua',
            'hrsh7th/cmp-nvim-lsp',
        }
    }

end,
config = config
})
