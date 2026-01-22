return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        -- 手动安装需要的 parser
        -- 因为新版 nvim-treesitter 移除了 configs 模块，我们需要手动调用 install 模块
        local ensure_installed = { "zig", "lua", "query", "go", "gomod", "fish" }
        require('nvim-treesitter.install').update(ensure_installed)

        -- 启用高亮
        vim.api.nvim_create_autocmd('FileType', {
            pattern = ensure_installed,
            callback = function()
                pcall(vim.treesitter.start)
            end,
        })
    end,
}
