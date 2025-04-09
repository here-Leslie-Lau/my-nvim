# My neovim config [![](https://img.shields.io/badge/build-passing-brightgreen.svg)](https://img.shields.io/badge/build-passing-brightgreen.svg)


## Screenshot

![screenshot1](screenshot.png)

![screenshot2](screenshot2.png)

![screenshot3](screenshot3.png)

## Notice

Recently the plug-in management of this repository was migrated from `packer nvim` to `lazy nvim`.

Since tag: `2.0.0`. You can get older versions from the `1.x.x` branch. And the [origin readme](ORIGIN_README.md).

Cause `packer nvim` is not maintained anymore.

## Reason

I used to develop with Vim, but installing the code completion plugin (YouCompleteMe) and CSTags was too much of a hassle (those who have installed them before should deeply understand).

Therefore, I decided to switch to Neovim. There are several benefits:

1. Easier configuration management.
2. In case of future computer environment migration, Neovim is more convenient.
3. Minimalist configuration. Only 10+ plugins are installed
3. Faster startup speed ( **50-60ms** ).

## Requirements

- neovim `>= 0.10.0`
- nodejs `>= v14`
- lua `>= 5.2.0`

## Usage

First back up your original configuration information.

And then:

```shell
rm -rf ~/.config/nvim/
cd ~/.config
git clone git@github.com:here-Leslie-Lau/my-nvim.git
mv my-nvim nvim
```

Then, open any file with Neovim, wait for a few seconds, and the plugins will be installed automatically.

Run in command-line mode:

```shell
:CocInstall coc-git coc-json coc-lua <your code language...>
```

Tips: I'm using coc.nvim.Currently, the installed code completion includes `coc-go, coc-json, coc-lua`.If the programming language you need is not available, you can refer to the [official website](https://github.com/neoclide/coc.nvim).

## Keymaps

First, let me explain that my \<leader\> key is set to `\`

You can modify the keybindings to your preferences in file `lua/config/lazy.lua`:

```lua
vim.g.mapleader = "\\"
```

You can modify the shortcut keys in file `lua/config/keymaps.lua`.

### General-shortcut-keys

| Shortcut keys | Purpose | Remark | Mode |
| --- | --- | --- | --- |
| \<C-c\> | Copy text | Press **Ctrl** and **c** to copy text | Visual |
| \<C-v\> | Paste text | Press **Ctrl** and **v** to paste text | Normal |
| \<F5\> | Create a new tab window | Press **F5** key to create a new tab | Normal |
| \<leader\>t | Open the file tree on the left side | Press **leader**,**t** | Normal |
| \<leader\>tf | Open the file tree on the left side and navigate to the location of your current file | Press **leader**,**t**,**f** | Normal |
| \<leader\>te | Open a floating terminal inside the file | Press **leader**,**t**,**e** | Normal |
| \<leader\>g | View the git commit history for the current line where the cursor is located | Press **leader**,**g** | Normal |
| \<leader\>ff | Find file in current directory, seems like **find** command | Press **leader** and double **f** | Normal |
| \<leader\>fg | Find text in current directory, seems like **grep** command | Press **leader**,**f**,**g** | Normal |

### Language-related-shortcut-keys

| Shortcut keys | Purpose | Remark | Mode |
| --- | --- | --- | --- |
| \<c-]\> | Go to the definition | Press **ctrl** and **]** | Normal |
| \<c-t\> | Go to the type definition | Press **ctrl** and **t** | Normal |
| gi | Go to the type definition | Press **g** and **i** | Normal |
| gr | View variable or function references | Press **g** and **r** | Normal |
| \<Tab\> | Scroll down the suggestions within the code completion box | Press **TAB** to scroll down | Insert |
| \<S-Tab\> | Scroll up the suggestions within the code completion box | Press **Shift** and **TAB** to scroll up | Insert |
| \<S-k\> | Display detailed information about the function or variable where the cursor is located | Press **Shift** and **k** show docs | Normal |

## Included-Plugins

- [Lazys.nvim](https://github.com/folke/lazy.nvim): A modern plugin manager for Neovim
- [Gruvbox](https://github.com/ellisonleao/gruvbox.nvim): Neovim gruvbox colorscheme
- [lualine](https://github.com/nvim-lualine/lualine.nvim): A blazing fast and easy to configure neovim statusline plugin written in pure lua
- [nvim-tree](https://github.com/nvim-tree/nvim-tree.lua): A File Explorer For Neovim Written In Lua
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter): provide some basic functionality such as highlighting
- [coc-nvim](https://github.com/neoclide/coc.nvim): Make your Vim/Neovim as smart as VS Code
- [vim-floaterm](https://github.com/voldikss/vim-floaterm): Use (neo)vim terminal in the floating/popup window
- [nvim-autopairs](https://github.com/windwp/nvim-autopairs): autopairs for neovim written in lua.
- [dashboard-nvim](https://github.com/nvimdev/dashboard-nvim): Fancy and Blazing Fast start screen plugin of neovim
- [Copilot](https://github.com/github/copilot.vim): Uses OpenAI Codex to suggest code and entire functions in real-time right from your editor
- [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim): This plugin adds indentation guides to Neovim
- [telescope](https://github.com/nvim-telescope/telescope.nvim): Find, Filter, Preview, Pick. All lua, all the time.
- [vim-go](https://github.com/fatih/vim-go): Go development plugin for Vim. *Cause i'm a gopher. if you don't need it, you can remove this plugin.*
- [notice](https://github.com/folke/noice.nvim): Highly experimental plugin that completely replaces the UI for messages, cmdline and the popupmenu.

## My CocList

- coc-snippets
- coc-prettier
- coc-lua
- coc-git
- coc-tsserver
- coc-json
- coc-go
- coc-vetur
- coc-fish
- coc-clangd

## Structure

```shell
.
├──    ORIGIN_README.md         (origin readme)
├──    README.md                (this file)
├──    init.lua
└──    lua/
│  └────    config/
│  │  ├────    keymaps.lua      (keymaps)
│  │  ├────    lazy.lua         (lazy nvim)
│  │  └────    options.lua      (general settings)
│  └────    plugins/            (plugin management)
```

## Contributing

Option 1: First, `fork` the code repository, then update the feature, and finally, initiate a `pull request`.

Option 2: Directly open an issue.

## FAQ

1. **How can get the origin versions?**

> this repository is migrated from `packer nvim` to `lazy nvim`. You can get older versions from the `1.x.x` branch. And the [origin readme](ORIGIN_README.md).

2. **How to install the plugins?**

> Copy this repository to `~/.config/nvim/` and open any file with Neovim, wait for a few seconds, and the plugins will be installed automatically.

3. **Migrate this repo from older versions to newest versions**

> If you want to migrate this repository from older versions to the newest versions, please follow these steps:
> 1. Delete the `~/.config/nvim/` directory. `rm -rf ~/.config/nvim/`
> 2. `git clone git@github.com:here-Leslie-Lau/my-nvim.git` && `mv my-nvim nvim`
> 3. Delete the cache of neovim. `rm -rf ~/.local/share/nvim/`
