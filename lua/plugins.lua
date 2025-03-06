-- Install Packer automatically if it's not installed(Bootstraping)
-- Hint: string concatenation is done by `..`
local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end
local packer_bootstrap = ensure_packer()


-- Reload configurations if we modify plugins.lua
-- Hint
--     <afile> - replaced with the filename of the buffer being manipulated
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])


-- Install plugins here - `use ...`
-- Packer.nvim hints
--     after = string or list,           -- Specifies plugins to load before this plugin. See "sequencing" below
--     config = string or function,      -- Specifies code to run after this plugin is loaded
--     requires = string or list,        -- Specifies plugin dependencies. See "dependencies".
--     ft = string or list,              -- Specifies filetypes which load this plugin.
--     run = string, function, or table, -- Specify operations to be run after successful installs/updates of a plugin
return require('packer').startup(function(use)
        -- Packer can manage itself
        use 'wbthomason/packer.nvim'

        ---------------------------------------
        -- NOTE: PUT YOUR THIRD PLUGIN HERE --
        ---------------------------------------
        -- color schemes
        use { "ellisonleao/gruvbox.nvim" }

        -- nvim web devicons
        use { "nvim-tree/nvim-web-devicons" }

        -- status line
        use { 'nvim-lualine/lualine.nvim' }

        -- tree
        use {
            'nvim-tree/nvim-tree.lua',
            cmd = { 'NvimTreeToggle', 'NvimTreeOpen', 'NvimTreeFindFile' },
            config = function()
                require('nvim-tree').setup {}
            end
        }

        -- tree sitter
        use {
            'nvim-treesitter/nvim-treesitter',
            event = 'BufRead',
            run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
            end,
            config = function()
                require'nvim-treesitter.configs'.setup {
                -- 安装 language parser
                -- :TSInstallInfo 命令查看支持的语言
                ensure_installed = {"vim", "lua", "javascript", "go", "c", "proto"},
                -- 启用代码高亮功能
                highlight = {
                    enable = true,
                    additional_vim_regex_highlighting = false
                },
                -- 启用增量选择
                incremental_selection = {
                    enable = true,
                    keymaps = {
                        init_selection = '<CR>',
                        node_incremental = '<CR>',
                        node_decremental = '<BS>',
                        scope_incremental = '<TAB>',
                    }
                },
                -- 启用基于Treesitter的代码格式化(=) . NOTE: This is an experimental feature.
                indent = {
                    enable = true
                }
            }
            end
       }

        -- telescope
        use {
            'nvim-telescope/telescope.nvim', tag = '0.1.8',
            cmd = 'Telescope',  -- when run Telescope command, load this plugin
            requires = { {'nvim-lua/plenary.nvim'} }
        }

        use {
            'voldikss/vim-floaterm',
            cmd = { 'FloatermToggle', 'FloatermNew' },
        }

        -- code style
        use {
            'jiangmiao/auto-pairs',
            event = 'InsertEnter',  -- enter insert mode to load plugin
        }
        use {
            'lukas-reineke/indent-blankline.nvim',
            event = 'BufRead',
            config = function ()
                require("ibl").setup()
            end
        }

        -- code language
        use {
            'neoclide/coc.nvim',
            branch = 'release',
            event = 'VimEnter',
        }
        use {
            'fatih/vim-go',
            ft = { 'go' },  -- when open go file, load this plugin
        }

        use {
            'nvimdev/dashboard-nvim',
            event = 'VimEnter',
            config = function()
                require('dashboard').setup{}
            end,
        }

        -- ai tools
        use {
            'github/copilot.vim',
            event = 'InsertEnter',  -- enter insert mode to load plugin
        }

        -- Automatically set up your configuration after cloning packer.nvim
        -- Put this at the end after all plugins
        if packer_bootstrap then
            require('packer').sync()
        end
    end)
