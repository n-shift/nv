# If you are new to lua

Check out this [great neovim lua guide](https://github.com/nanotee/nvim-lua-guide)

# Where do I ask for help?
- [Official subreddit](https://reddit.com/r/neovim/) - general neovim questions
- [Stack Exchange](https://vi.stackexchange.com/) - general (neo)vi(m) questions
- [Neovim forum](https://neovim.discourse.group/) - general neovim questions
- Open an issue in plugin repository if it's related to plugin

# Where to seek for settings

- [`:h options.txt`](https://neovim.io/doc/user/options.html)
- Look at someone else's dotfiles; `:h ...` on unknown options

# Where to seek for plugins
- [awesome-nvim](https://github.com/rockerBOO/awesome-neovim)
- [neovimcraft](https://neovimcraft.com/)
- Look at someone else's dotfiles

# Recommended plugins
- [williamboman/nvim-lsp-installer](https://github.com/williamboman/nvim-lsp-installer)
    Crossplatform lsp servers installation
- [AcksID/nvim-neoclip.lua](https://github.com/AcksID/nvim-neoclip.lua)
    Telescope cliboard manager
- [lukas-reineke/indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
    Indent guides

# Extending nv

## Treesitter

If you wish to install treesitter parser for language:
- `:TSInstall lang_name`
- Add parser name into `ensure_installed` (`lua/config/treesitter.lua`)
- If your parser is not in list of available parser - [add it manually](https://github.com/nvim-treesitter/nvim-treesitter#adding-parsers)

## Colorscheme

Choose any colorscheme you like, but if you will continue using treesitter - make sure it is treesitter-compatible.

## Changing something in plugins specification file

Run `:PackerCompile` after every completed change. Otherwise your configuration might not work until you run `:PackerSync`

## Mappings

Do not use default mappings unless you are ok with them. Try everything and change if it is not suitable for you.

## Options

Before changing/adding and option in `lua\options.lua` make sure you know what does it do. Otherwise read help page for it (`:h "option"`)

## Tweaking plugin configuration

nv leaves only changed options in plugin config files, so if you want to learn more about plugin options - 
- `:h $pluginname`
- Read plugin's README file
