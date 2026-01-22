return {
    {
        "neanias/everforest-nvim",
        version = false,
        priority = 1000,
        lazy = true,
        background = "hard",
        transparent_background_level = 0,
        italics = false,
        disable_italic_comments = false,
        sign_column_background = "none",
        ui_contrast = "high",
        iagnostic_text_highlight = true,

        config = function()
            require("everforest").setup({
                on_highlights = function(hl, palette)
                    hl.TSBoolean = { fg = palette.purple, bg = palette.none, bold = true }
                end,
            })
        end,
    }
}
