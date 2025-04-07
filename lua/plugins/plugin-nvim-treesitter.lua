return {
    "nvim-treesitter/nvim-treesitter",
    -- lazy = true,
    -- event = 'BufRead',
    build = ":TSUpdate",
    config = function()
        require'nvim-treesitter.configs'.setup{
            -- 安装 language parser
            -- :TSInstallInfo 命令查看支持的语言
            ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "go", "gomod", "fish", "javascript" },
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },
        }

        -- run TSBufToggle highlight
        vim.cmd('TSBufToggle highlight')
    end,
}
