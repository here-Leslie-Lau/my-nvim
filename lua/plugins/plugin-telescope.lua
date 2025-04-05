return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    lazy = true,
    cmd = 'Telescope',  -- when run Telescope command, load this plugin
    -- or                              , branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim' }
}
