return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      additional_vim_regex_highlighting = false,

      ensure_installed = {
        -- defaults
        "vim",
        "lua",

        -- web dev
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "json",
        -- "vue", "svelte",

        -- low level
        "c",
        "zig",
        -- my custom stuff
        "go",
        "bash",
      },
    },
  },

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "jose-elias-alvarez/null-ls.nvim",
      config = function()
        require "custom.configs.null-ls"
      end,
    },

    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "bash-language-server",
        "gopls",
        "goimports",
        "golines",
        "html-lsp",
        "css-lsp",
        "prettier",
        "stylua",
      },
    },
  },
  {
    "hrsh7th/nvim-cmp",
    opts = function()
      local cfg = require "plugins.configs.cmp"
      cfg.sources = {
        { name = "nvim_lsp" },
        { name = "path" },
      }
      return cfg
    end,
  },
}
