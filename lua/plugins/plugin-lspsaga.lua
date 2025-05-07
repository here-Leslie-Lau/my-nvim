return {
    'nvimdev/lspsaga.nvim',
    lazy = true,
    event = 'VeryLazy',
    dependencies = {
        'nvim-treesitter/nvim-treesitter', -- optional
        'nvim-tree/nvim-web-devicons',     -- optional
        "neovim/nvim-lspconfig",
    },
    config = function()
        require('lspsaga').setup({})
    end,
}
