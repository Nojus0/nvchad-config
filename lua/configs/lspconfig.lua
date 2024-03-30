-- EXAMPLE
local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = {
  "html",
  "cssls",
  "pyright",
  "bashls",
  "tsserver",
  "yamlls",
  -- "emmet_ls",

  "jsonls",
  "clangd",
  "svelte",
  "tailwindcss",
  "theme_check",
  "volar",
  "templ",
}

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
  }
end

lspconfig.gopls.setup {
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
  settings = {
    gopls = {
      analyses = {
        unusedparams = true,
      },
      symbolMatcher = "Fuzzy",
      staticcheck = true,
      completeUnimported = true,
      -- usePlaceholders = true,
      hints = {
        assignVariableTypes = true,
        constantValues = true,
        parameterNames = true,
        rangeVariableTypes = true,
      },
    },
  },
}
