vim.cmd([[ if has('termguicolors')
            set termguicolors
            endif
]])

vim.o.background = "dark" -- or "light" for light mode
vim.cmd('colorscheme gruvbox')
vim.g.airline_theme = 'base16_gruvbox_dark_pale'
-- vim.base16colorspace = 256
vim.cmd([[let g:everforest_background = 'hard']])
