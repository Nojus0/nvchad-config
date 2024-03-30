require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!



local opt = vim.opt
local autocmd = vim.api.nvim_create_autocmd

vim.filetype.add { extension = { templ = "templ" } }
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
opt.shellquote = '"'
opt.shellxquote = ""
opt.guifont = "JetBrainsMono Nerd Font Mono:h12"

-- autocmd("BufWritePre", { pattern = "*.templ", callback = vim.lsp.buf.format })

autocmd("BufWritePre", {
  pattern = "*.go",
  callback = function()
    vim.lsp.buf.format { async = false }
  end,
})
