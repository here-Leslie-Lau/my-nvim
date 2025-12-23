return {
    "rose-pine/neovim",
    lazy = true,
    priority = 1000,
    name = "rose-pine",
    config = function()
        require("rose-pine").setup({
            variant = "main", -- auto, main, moon, or dawn
            dark_variant = "main", -- main, moon, or dawn
            dim_inactive_windows = false,
            extend_background_behind_borders = true,

            enable = {
                terminal = true,
                legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
                migrations = true, -- Handle deprecated options automatically
            },

            styles = {
                bold = true,
                italic = true,
                transparency = false,
            },
        })
    end
}
