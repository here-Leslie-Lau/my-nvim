vim.base16colorspace = 256

local themes = { "gruvbox", "everforest", "rose-pine" }
-- make sure the random seed is different each time
math.randomseed(os.time())
local random_index = math.random(#themes)
-- set the colorscheme
local chosen_theme = themes[random_index]
vim.cmd("colorscheme " .. chosen_theme)
