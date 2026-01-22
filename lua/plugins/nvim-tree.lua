return {
    { "nvim-tree/nvim-web-devicons", lazy = true },
    {
        "nvim-tree/nvim-tree.lua",
        lazy = true,
        cmd = { 'NvimTreeToggle', 'NvimTreeOpen', 'NvimTreeFindFile' },
        opts = {
                sort = {
                    sorter = "case_sensitive",
                },
                view = {
                    width = 30,
                },
                renderer = {
                    group_empty = true,
                },
                filters = {
                    dotfiles = false,
                },
        },
    },
}
