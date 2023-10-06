local configs = require "plugins.configs.lspconfig"
local on_attach = configs.on_attach
local capabilities = configs.capabilities
local lspconfig = require "lspconfig"

local simple_servers = {
  "html",
  "cssls",
  "pyright",
  "bashls",
  "tsserver",
  "yamlls",
  "emmet_ls",
  "jsonls"
}

for _, server in ipairs(simple_servers) do
  lspconfig[server].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

lspconfig.gopls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    gopls = {
      analyses = {
        unusedparams = true,
      },
      -- symbolMatcher = "Fuzzy",
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
