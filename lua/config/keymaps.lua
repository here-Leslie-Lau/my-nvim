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

-- 插件相关快捷键
map('n', '<leader>te', ':Lspsaga term_toggle<CR>', opts)
map('n', '<leader>ff', ':Telescope find_files<CR>', opts)
map('n', '<leader>fg', ':Telescope live_grep<CR>', opts)
map('n', '<leader>g', '<Esc>:Gitsigns blame_line<CR>', opts)
map('n', '<leader>G', '<Esc>:Gitsigns blame<CR>', opts)

-- 语言相关
vim.keymap.set("n", "K", "<CMD>Lspsaga hover_doc<CR>", opts)
vim.keymap.set("n", "D", "<CMD>Lspsaga hover_doc<CR>", opts)
vim.keymap.set("n", "<C-]>", "<CMD>Lspsaga goto_definition<CR>", opts)
vim.keymap.set("n", "gi", "<CMD>lua vim.lsp.buf.implementation()<CR>", opts)
-- vim.keymap.set("n", "ga", "<CMD>lua vim.lsp.buf.code_action()<CR>", opts)
vim.keymap.set("n", "]d", "<CMD>Lspsaga diagnostic_jump_next<CR>", opts)
vim.keymap.set("n", "[d", "<CMD>Lspsaga diagnostic_jump_prev<CR>", opts)
vim.keymap.set("n", "gr", "<CMD>Lspsaga finder<CR>", opts)
-- open outline
vim.keymap.set("n", "<leader>oo", "<CMD>Lspsaga outline<CR>", opts)

local keyset = vim.keymap.set
-- Autocomplete
function _G.check_back_space()
    local col = vim.fn.col('.') - 1
    return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') ~= nil
end
