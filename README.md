# nv

<div align="center">

[![Lua](https://img.shields.io/badge/Made%20with%20Lua-blueviolet.svg?style=for-the-badge&logo=lua)]()

</div>

<div align="center">

<a href="https://github.com/shift-d/nv">
    <img src="https://img.shields.io/github/repo-size/shift-d/nv?style=flat-square&label=Repo" alt="GitHub repository size"/>
</a>
<a href="https://github.com/shift-d/nv/blob/main/LICENSE">
    <img src="https://img.shields.io/github/license/siduck76/NvChad?style=flat-square&logo=GNU&label=License" alt="License"/>
</a>

[![Neovim Minimum Version](https://img.shields.io/badge/Neovim-0.5+-blueviolet.svg?style=flat-square&logo=Neovim&logoColor=white)](https://github.com/neovim/neovim)
[![Last Commit](https://img.shields.io/github/last-commit/shift-d/nv.svg?style=flat-square&label=Last%20Commit&color=58eb34)](https://github.com/shift-d/nv/pulse)

</div>

nv is a lua neovim config which tries to be simple, cute and well-documented

## Installation

### Pre-requisites

#### For installation
- [neovim v0.5.0+](https://neovim.io) (required for lua support)
- git

#### Requirements for default config to work
- [Nerd patched font](https://www.nerdfonts.com/) - used by nvim-web-devicons
- [sumneko-lua](https://github.com/sumneko/lua-language-server) - used by [lua-dev](#folkelua-devnvim)
- [ripgrep](https://github.com/BurntSushi/ripgrep) - default [telescope](#nvim-telescopetelescopenvim) grep searcher


### Manual

1. Backup your previous neovim config if it exists
2. Clone repository into config folder
    - Windows
        - cmd
            - default: `git clone https://github.com/shift-d/nv --depth 1 %LOCALAPPDATA%\nvim\`
            - XDG_CONFIG_HOME is set: `git clone https://github.com/shift-d/nv --depth 1 %XDG_CONFIG_HOME%\nvim\`
        - powershell
            - default: `git clone https://github.com/shift-d/nv --depth 1 $env:LOCALAPPDATA\nvim\`
            - XDG_CONFIG_HOME is set: `git clone https://github.com/shift-d/nv --depth 1 $env:XDG_CONFIG_HOME\nvim\`
    - Unix:
        - default: `git clone https://github.com/shift-d/nv --depth 1 ~/.config/nvim/`
        - XDG_CONFIG_HOME is set: `git clone https://github.com/shift-d/nv -- depth 1 $XDG_CONFIG_HOME/nvim/`
3. Open neovim inside config directory
4. Type `:PackerInstall`
5. Reopen neovim - and... done!

### Script

#### Windows
1. Open powershell
2. Run `Invoke-WebRequest https://raw.githubusercontent.com/shift-d/nv/main/scripts/install.ps1 | select -ExpandProperty Content | Invoke-Expression`
3. Follow steps 3-5 from [manual installation](#manual)

#### Unix
1. Open shell
2. Run `curl --proto '=https' --tlsv1.2 -sSf https://raw.githubusercontent.com/shift-d/nv/main/scripts/install.sh | bash`
3. Follow steps 3-5 from [manual installation](#manual)

## Configuration

Feel free to configurate everything!
Unlike [NvChad](https://github.com/NvChad/NvChad) and [kyoto.nvim](https://github.com/samrath2007/kyoto.nvim) nv provides only glue for your config.
Make it yourself!

Please, review every config file. If you don't know what exactly this option does - run `:h $option` or if it's in plugin config - visit it's README.md.

## Directory overview

- `init.lua` - file that imports every module
- `lua/` - folder that should be used for containing `*.lua` files
    - `config/` - folder for plugin configuration files
        - `packer.lua` - [packer.nvim](https://github.com/wbthomason/packer.nvim) config and autoinstall
    - `options.lua` - `vim.opt`, `vim.o` and `vim.g` options
    - `mappings.lua` - keybindings handled by [nest.nvim](https://github.com/LionC/nest.nvim)
    - `plugins.lua` - plugin specification file; more info in [Plugins](#Plugins) section
    - `lsp.lua` - LSP settings
    - `utils.lua` - global functions for lua
- `viml/` - folder that should be used for containing  `*.vim` files
    - `commands.vim` - definitions of user commands and autocommands

## Comparison to other configs

State|nv|NvChad|kyoto.nvim|Lunarvim|
-----|--|------|----------|--------|
Number of plugins | 18 | 33 | 30 | 26|
Why | simplicity and well-documented | fast and pretty | fast and customizable | sane defaults|
Installation | crossplatform | crossplatform | linux/macos only | [not yet](https://github.com/LunarVim/LunarVim/pull/1261)
Required | nerd font, sumneko-lua, rg | rg, nodejs, nerd font | nerd font, ctags, python, nodejs, rg | rust, python, nodejs |
> Latest update of table: 8.09.21

## Screenshots

#### overview
[![overview](https://i.postimg.cc/T2ryHJMD/image.png)](https://postimg.cc/8szP7WCp)
#### dashboard
[![dashboard](https://i.postimg.cc/Ls14gmm1/image.png)](https://postimg.cc/94cHv5Rm)
#### nvimtree
[![NvimTree](https://i.postimg.cc/pTBHKT4p/image.png)](https://postimg.cc/YGjZHppH)
#### completion
[![completion](https://i.postimg.cc/85ZY1rxB/image.png)](https://postimg.cc/tZVkk7qY)
#### telescope.nvim
[![telescope.nvim](https://i.postimg.cc/43Z2V5gQ/image.png)](https://postimg.cc/nXR1tqMX)
#### lualine
[![lualine](https://i.postimg.cc/YjKzkr2z/image.png)](https://postimg.cc/D46XPKXS)

# nv resources
- [EXTENDING.md](https://github.com/shift-d/nv/blob/main/markdown/EXTENDING.md) - notes about extending nv
- [DOCS.md](https://github.com/shift-d/nv/blob/main/markdown/DOCS.md) - nv documentation

# FAQ

## Why use vimscript and not write entire config in lua?

Sometimes you are not able to write code in lua, so you have to call vimscript from lua.
In my opinion, making stacks of `vim.cmd(...` is a bad idea, so I'd like to separate vimscript only categories from lua code.
In case of this config, defining commands and autocommands is not supported in neovim lua api _yet_, so that's why I moved their definition to .vim file.

NOTE: related PR's for adding commands and autocommands support for lua API:
[neovim/neovim#11613](https://github.com/neovim/neovim/pull/11613)
[neovim/neovim#14661](https://github.com/neovim/neovim/pull/14661)

# Credits
[siduck76](https://github.com/siduck76) - for his inspirational [NvChad](https://github.com/NvChad/NvChad)

[samrath2007](https://github.com/samrath2007) - for his amazing [kyoto.nvim](https://github.com/samrath2007/kyoto.nvim)
