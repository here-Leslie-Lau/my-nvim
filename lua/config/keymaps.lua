-- define common options
local opts = {
    noremap = true,      -- non-recursive
    silent = true,       -- do not show message
}
local map = vim.api.nvim_set_keymap

map('n', '<leader>t', ':NvimTreeToggle', opts)
map('n', '<leader>tf', '<Esc>:NvimTreeFindFile<CR>', opts)
map('n', '<F5>', '<Esc>:tabnew<CR>', opts)
map('v', '<C-c>', '"+y', opts)
map('n', '<C-v>', '"*p', opts)
