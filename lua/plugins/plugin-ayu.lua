return {
    {
        "Shatur/neovim-ayu",
        version = false,
        priority = 1000,
        lazy = true,
        config = function()
            require("ayu").setup({
                mirage = false,
                terminal = true,
                overrides = {},
            })
        end,
    }
}
