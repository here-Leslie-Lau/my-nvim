-- define common options
local opts = {
    noremap = true,      -- non-recursive
    silent = true,       -- do not show message
}
local map = vim.api.nvim_set_keymap

-- vim.g.mapleader = "\\"
-- vim.g.maplocalleader = "\\"

map('n', '<leader>t', ':NvimTreeToggle', opts)
map('n', '<leader>tf', ':NvimTreeFindFile', opts)
map('n', '<F5>', ':tabnew', opts)
map('n', '<leader>te', ':FloatermToggle', opts)
map('n', '<leader>g', ':CocCommand git.showBlameDoc', opts)
