# Documentation

## Settings

Settings are located in `lua/options.lua`. By 'settings' I mean `vim.o.`, `vim.opt.` and `vim.g.` ones.

- `g.configdir` is set to `$XDG_CONFIG_HOME/nvim` by default. Please, change it to your neovim config location.
- `<leader>` is set to `;`
- System clipboard is default clipboard
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
- before loading plugin:
    - loads plugin via `packer.loader`
    - reopens current file so lsp starts correctly
- config is located in `lua/lsp.lua`

#### [glepnir/lspsaga.nvim](https://github.com/glepnir/lspsaga)
UI for neovim lsp
- loads after `nvim-lspconfig` plugin
- config is located in `lua/config/lspsaga.lua`

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
    - `s` -> `:Telescope file_browser` - open file browser
    - `b` -> `:Telescope buffers` - open telescope's buffer list
    - `g` -> `:Telescope live_grep` - grep through cwd files
    - `h` -> `:Telescope command_history` - open command history
    - `r` -> `:Telescope find_files` - view recent files
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
    - `<leader>nf` -> `:DashboardNewFile` - create new file with dashboard

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
