local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettier" },
    html = { "prettier" },
    js = { "prettier" },
    ts = { "prettier" },
    go = { "golines" },
  },
  async = true,
  timeout_ms = 15000,

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 15000,
    lsp_fallback = true,
  },
}

require("conform").setup(options)
