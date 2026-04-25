require("mason").setup()
require("mason-lspconfig").setup()

local zig_fmt_group = vim.api.nvim_create_augroup("zig_fmt", {})

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.zig",
  group = zig_fmt_group,
  callback = function(args)
    local lines = vim.api.nvim_buf_get_lines(args.buf, 0, -1, false)
    local input = table.concat(lines, "\n")

    if vim.bo[args.buf].endofline then
      input = input .. "\n"
    end

    local output = vim.fn.system({ "zig", "fmt", "--stdin" }, input)
    if vim.v.shell_error ~= 0 then
      vim.notify(output, vim.log.levels.ERROR)
      return
    end

    local formatted = vim.split(output, "\n", { plain = true })
    if formatted[#formatted] == "" then
      table.remove(formatted)
    end

    local view = vim.fn.winsaveview()
    vim.api.nvim_buf_set_lines(args.buf, 0, -1, false, formatted)
    vim.fn.winrestview(view)
  end,
})

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
