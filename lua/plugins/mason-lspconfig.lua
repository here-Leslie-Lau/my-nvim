return {
    "williamboman/mason-lspconfig.nvim",
    event = "CmdlineEnter",
    config = function ()
        vim.api.nvim_create_autocmd("BufWritePre", {
            pattern = "*.c,*.h",
            callback = function()
                vim.lsp.buf.format({ async = true })
            end,
        })
    end
}
