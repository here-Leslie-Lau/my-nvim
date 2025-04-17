require("mason").setup()
require("mason-lspconfig").setup()

for _, val in ipairs({ "lua_ls", "gopls", "clangd", "taplo", "buf_ls" }) do
    require("lspconfig")[val].setup({
        on_attach = function(client, bufnr)
            if client.server_capabilities.inlayHintProvider then
                vim.lsp.inlay_hint.enable(true)
            end
            local opts = { buffer = bufnr }

            vim.keymap.set("n", "K", "<CMD>lua vim.lsp.buf.hover()<CR>", opts)
            vim.keymap.set("n", "D", "<CMD>lua vim.lsp.buf.hover()<CR>", opts)
            vim.keymap.set("n", "<C-]>", "<CMD>lua vim.lsp.buf.definition()<CR>", opts)
            vim.keymap.set("n", "gi", "<CMD>lua vim.lsp.buf.implementation()<CR>", opts)
            -- vim.keymap.set("n", "ga", "<CMD>lua vim.lsp.buf.code_action()<CR>", opts)
            vim.keymap.set("n", "]d", "<CMD>lua vim.diagnostic.goto_next()<CR>", opts)
            vim.keymap.set("n", "[d", "<CMD>lua vim.diagnostic.goto_prev()<CR>", opts)
            vim.keymap.set("n", "gr", "<CMD>lua vim.lsp.buf.references()<CR>", opts)
        end,
        capabilities = require("blink.cmp").get_lsp_capabilities(),
    })
end
