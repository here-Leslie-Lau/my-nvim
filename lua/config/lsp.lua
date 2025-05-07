require("mason").setup()
require("mason-lspconfig").setup()

for _, val in ipairs({ "lua_ls", "gopls", "clangd", "taplo", "buf_ls" }) do
    -- require("lspconfig")[val].setup({
        -- on_attach = function(client, bufnr)
        --    if client.server_capabilities.inlayHintProvider then
        --       vim.lsp.inlay_hint.enable(true)
        --    end
        -- end,
       -- capabilities = require("blink.cmp").get_lsp_capabilities(),
   -- })
end
