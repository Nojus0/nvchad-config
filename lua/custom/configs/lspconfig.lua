local configs = require "plugins.configs.lspconfig"
local on_attach = configs.on_attach
local capabilities = configs.capabilities
local lspconfig = require "lspconfig"

local simple_servers = { "html", "cssls" }

for _, server in ipairs(simple_servers) do
  lspconfig[server].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

lspconfig.gopls.setup {
  -- on_attach = function(client, bufnr)
  --   on_attach(client, bufnr)
  --   client.server_capabilities.documentFormattingProvider = true
  --   client.server_capabilities.documentRangeFormattingProvider = true
  -- end,
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
      usePlaceholders = true,
      hints = {
        assignVariableTypes = true,
        constantValues = true,
        parameterNames = true,
        rangeVariableTypes = true
      },
    },
  },
}
