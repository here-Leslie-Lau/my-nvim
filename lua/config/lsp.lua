require("mason").setup()
require("mason-lspconfig").setup()

vim.lsp.config['zls'] = {
  -- Set to 'zls' if `zls` is in your PATH
  cmd = { '/Users/leslie/.local/bin/zls' },
  filetypes = { 'zig' },
  root_markers = { 'build.zig' },

  -- Further information on how to configure ZLS:
  -- https://zigtools.org/zls/configure/
  settings = {
    zls = {
      -- Whether to enable build-on-save diagnostics
      --
      enable_build_on_save = true,
    }
  },
}
vim.lsp.enable('zls')
