local opt = vim.opt
local autocmd = vim.api.nvim_create_autocmd

opt.encoding = "utf-8"
opt.fileencoding = "utf-8"

opt.backup = false
opt.swapfile = false

opt.scrolloff = 12
opt.relativenumber = true
opt.wrap = false
opt.ff = "unix"
opt.shell = "powershell"
opt.shellcmdflag = "-command"
opt.shellquote= "\""
opt.shellxquote = ""
opt.guifont = "JetBrainsMono Nerd Font Mono:h12"

autocmd("BufWritePre", {
  pattern = "*.go",
  callback = function()
    vim.lsp.buf.format { async = false }
  end,
})
