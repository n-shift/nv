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
- [glow](https://github.com/charmbracelet/glow) - used by [glow.nvim](#ellisonleaoglownvim)
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

### Post-installation
- Add [LspInstall](https://github.com/williamboman/nvim-lsp-installer) plugin
    - NOTE: I'd recommend this plugin because it is crossplatform, unlike other LspInstall plugins
    - NOTE: I did not include this plugin because I wanted users to decide whether they want to install lsp servers manually or not

## Configuration

Feel free to configurate everything!
Unlike [NvChad](https://github.com/NvChad/NvChad) and [kyoto.nvim](https://github.com/samrath2007/kyoto.nvim) nv provdes only glue for your config.
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
Number of plugins | 17 | 33 | 30 | 26|
Why | simplicity and well-documented | fast and pretty | fast and customizable | sane defaults|
Installation | crossplatform | crossplatform | linux/macos only | [not yet](https://github.com/LunarVim/LunarVim/pull/1261)
Required | nerd font, glow, sumneko-lua, rg | rg, nodejs, nerd font | nerd font, ctags, python, nodejs, rg | rust, python, nodejs |
> Latest update of table: 7.09.21

## Screenshots

#### overview
[![overview](https://i.postimg.cc/C5GLb8RG/image.png)](https://postimg.cc/jnjbbLQ2)
#### dashboard
[![dashboard](https://i.postimg.cc/jSzB6r4r/image.png)](https://postimg.cc/yD8fBtGf)
#### glow in action
[![glow in action](https://i.postimg.cc/ZqxMTf0N/image.png)](https://postimg.cc/Tyh90JV2)
#### nvimtree
[![NvimTree](https://i.postimg.cc/gcVYSv0R/image.png)](https://postimg.cc/kD53DRKX)
#### completion
[![completion](https://i.postimg.cc/N0cD4qCR/image.png)](https://postimg.cc/sMT5j8r2)
#### telescope.nvim
[![telescope.nvim](https://i.postimg.cc/jSs8MHMd/image.png)](https://postimg.cc/MvFbTQkh)
#### lualine
[![lualine](https://i.postimg.cc/8cRHHcW6/image.png)](https://postimg.cc/5QtL9xs4)

# Documentation

## Settings

Settings are located in `lua/options.lua`. By 'settings' I mean `vim.o.`, `vim.opt.` and `vim.g.` ones.

- `g.configdir` is set to `$XDG_CONFIG_HOME/nvim` by default. Please, change it to your neovim config location.
- `<leader>` is set to `;`
- current line highlighting is enabled
- tildas (`~`) at the end of buffer are disabled
- maximum amount of completion items is 10
- minimal number of lines abow and below cursor is 1000, so cursor is almost always ar center
- splits open to down and right
- other lanugage providers are disabled
- hybrid numeration is enabled and default numberwidth is set to 1
- tabs are set to 4 spaces
- neovim intro is disabled
- terminal colors are enabled
- shada file is disabled
- disabled built-in plugins:
    - 2html
    - getscript
    - gzip
    - logipat
    - netrw
    - matchit
    - tar
    - rrhelper
    - spellfile
    - vimball
    - zip

## Plugins

Plugins in nv are managed with [packer.nvim](https://github.com/wbthomason/packer.nvim)

List below contains every plugin provided by default with notes about it's configuration

### Colors

#### [Pocco81/Catppuccino.nvim](https://github.com/Pocco81/Catppuccino.nvim)
Pack of treesitter-compatible colorschemes with multiple other plugin integrations available
- loads after reading `init.lua` (`VimEnter` event)
- config is located in `lua/config/colorscheme.lua`

#### [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
Built-in language parser's configurator
- loads when starting to edit a new buffer (`BufRead` event)
- config is located in `lua/config/treesitter.lua`

#### [hoob3rt/lualine.nvim](https://github.com/hoob3rt/lualine.nvim)
Lua-powered statusline
- requires
    - [kyazdani42/nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)
- config is located in `lua/config/statusline.lua`

### Text

#### [mhartington/formatter.nvim](https://github.com/mhartington/formatter.nvim)
Plugin for formatting current buffer
- loads on `:Format` command
- config is located in `lua/config/formatter.lua`

#### [ellisonleao/glow.nvim](https://github.com/ellisonleao/glow.nvim)
Markdown preview, uses [glow](https://github.com/charmbracelet/glow) under hood
- loads if current buffer has `markdown` filetype

### Tpope section

#### [tpope/vim-surround](https://github.com/tpope/vim-surround)
Amazing vimscript plugin that allows you edit surrounding symbols
- loads after reading `init.lua` (`VimEnter` event)

### Utils

#### [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
Bunch of great lua functions;

#### [LionC/nest.nvim](https://github.com/LionC/nest.nvim)
Small lua wrapper around keymap api. Allows creating nested keymaps

#### [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
Superpowered lua fuzzy finder
- loads on `:Telecope` command
- config is located in `lua/config/telescope.nvim`

#### [glepnir/dashboard-nvim](https://github.com/glepnir/dashboard-nvim)
Lua dashboard that you see after open neovim.

#### [kyazdani42/nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua)
A file explorer tree written in lua
- loads after [Catppuccino.nvim](#pocco81catppuccinonvim)
- requires
    - [kyazdani42/nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)
- config is located in `lua/config/nvimtree.lua`

#### [folke/which-key.nvim](https://github.com/folke/which-key.nvim)
Suggest keys as you type
- config is located in `lua/config/whichkey.lua`

### Git

#### [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
Super fast git decorations implemented purely in lua/teal
- loads if cwd contains `.git` directory
- requires
    - [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
- config is located in `lua/config/gitsigns.lua`

### Completion

#### [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
Completion engine based on "sources" concept
- loads when starting to edit a new buffer (`BufRead` event)
- requires
    - [hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer)
        - loads after `nvim-cmp` plugin
    - [hrsh7th/cmp-nvim-lua](https://github.com/hrsh7th/cmp-nvim-lua)
        - loads after `nvim-cmp` plugin
    - [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
        - loads after `nvim-cmp` plugin
    - [saadparwaiz1/cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip)
        - loads after `LuaSnip` plugin
- config is located in `lua/config/cmp.lua`

#### [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip)
Neovim snippet engine built in lua
- loads after `nvim-cmp` plugin

### LSP

#### [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
Native neovim lsp configurator
- loads after `cmp-nvim-lsp` plugin
- config is located in `lua/lsp.lua`

#### [folke/lua-dev.nvim](https://github.com/folke/lua-dev.nvim)
Dev setup for init.lua and plugin development with full signature help, docs and completion for nvim lua API.
- loads if current buffer has `lua` type

## (Auto)commands

Located in `viml/commands.vim`

### Commands

#### PackerSource

Execute file with plugin specification
```vim
command! PackerSource :execute 'luaf ' . g:configdir . '/lua/plugins.lua'
```

#### PackerConfig

Open file with plugin specification
```vim
command! PackerConfig :execute 'edit ' . g:configdir . '/lua/plugins.lua'
```

### Autocommands

#### termin augroup

Group for autocommands related to terminal

- TermOpen
    - If terminal is opened - remove numbers
    ```vim
    au TermOpen term://* | setlocal nonumber norelativenumber
    ```

## Mappings

Located in `lua/mappings.lua`. Created using [nest.nvim](#lioncnestnvim).
Default `<leader>` key is set in `lua/options.lua`

###### Please note that `<cmd>...<cr>` syntax is replaced in README with `:...`, `<cmd>lua require...` with `plugin_name...`

- escapes (escape from specific mode to normal)
    - insert mode, `jk` -> escape
    - terminal mode, `jk` -> `C-\ C-n`
- leader (`<leader>key` mappings)
    - prefix for all mappings here - `<leader>`
    - `l` -> `:luaf%` (execute current buffer's lua code)
    - `q` -> `:Format` (format current buffer)
- packer ([packer.nvim](https://github.com/wbthomason/packer.nvim) related mappings)
    - prefix for all mappings here - `<leader>p`
    - `i` -> `:PackerInstall` - install plugins from spec
    - `S` -> `:PackerSource` - [custom](#PackerSource)
    - `s` -> `:PackerSync` - synchronize with config and update plugins
    - `u` -> `:PackerUpdate` - update plugins
    - `c` -> `:PackerCompile` - synchronize with config
    - `p` -> `:PackerProfile` - see how much `plugin/packer_compiled.lua` parts loading take
    - `t` -> `:PackerStatus` - check plugins' status
    - `d` -> `:PackerClean` - remove plugins that don't match with spec
    - `o` -> `:PackerConfig` - [custom](#PackerConfig)
- telescope ([telescope.nvim](#nvim-telescopetelescopenvim) related mappings)
    - prefix for all mappings here - `<leader>t`
    - `t` -> `:Telescope` - open telescope
    - `f` -> `:Telescope fd` - open telescope's file finder
    - `b` -> `:Telescope buffers` - open telescope's buffer list
    - `g` -> `:Telescope live_grep` - grep through cwd files
    - `h` -> `:Telescope command_history` - open command history
- gitsigns
    - prefix for all mappings here - `<leader>h`
    - normal mode
        - `s` -> `gitsigns.stage_hunk()`
        - `u` -> `gitsigns.undo_stage_hunk()`
        - `r` -> `gitsigns.reset_hunk()`
        - `R` -> `gitsigns.reset_buffer()`
        - `p` -> `gitsigns.blame_line(true)`
        - `b` -> `gitsigns.stage_buffer()`
        - `U` -> `gitsigns.reset_buffer_index()`
    - visual mode
        - `s` -> `gitsigns.stage_hunk(.....)`
        - `r` -> `gitsigns.reset_hunk(.....)`
- unnamed mappings
    - `<leader>m` -> `:split | terminal` - open terminal in horizontal split

## LSP

Lsp configuration by default is stored in `lua/lsp.lua`

Quick overview of everything in file:
- `capabilities` - lsp capabilities modified for `nvim-cmp` support
- `on_attach` - code that executes only after lsp attaches to buffer. Here we define local keybindings.

After all, we can now extend lsp in two ways:
1. Provide [options](https://github.com/neovim/nvim-lspconfig) to `lspconfig.lsp_name.setup()`
2. Set up via external plugin (often uses similar structure as lspconfig's options). In nv there's [lua-dev](#folkelua-devnvim) plugin for setting up lua lsp.

### lua lsp configuration notes

After installing lua-language-server, please, change `lua_lsp_main` to path to `main.lua` inside your lua-language-server installation folder.

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
