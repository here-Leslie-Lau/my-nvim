# My neovim config

## Screenshot

![screenshot1](screenshot.png)

![screenshot2](screenshot2.png)

![screenshot3](screenshot3.png)

## Reason

I used to develop with Vim, but installing the code completion plugin (YouCompleteMe) and CSTags was too much of a hassle (those who have installed them before should deeply understand).

Therefore, I decided to switch to Neovim. There are several benefits:

1. Easier configuration management.
2. In case of future computer environment migration, Neovim is more convenient.
3. Faster startup speed (not significantly different).

## Requirements

- neovim `>= 0.8.0`
- nodejs `>= v14`

## Usage

First back up your original configuration information.

And then:

```shell
rm -rf ~/.config/nvim/
cd ~/.config
git clone git@github.com:here-Leslie-Lau/my-nvim.git
mv my-nvim nvim
cd nvim && nvim lua/plugins.lua
```

Run in Neovim `:w` and Wait for the plugin installation to finish.

## Keymaps

TODO

## Install Lsp

I'm using coc.nvim.Currently, the installed code completion includes `coc-go, coc-json, coc-lua`.

If the programming language you need is not available, you can refer to the [official website](https://github.com/neoclide/coc.nvim).
