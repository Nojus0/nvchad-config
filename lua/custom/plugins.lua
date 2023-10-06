return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      additional_vim_regex_highlighting = false,
      autotag = {
        enable = true
      },
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
        "python",
      },
    },
  },

  {
    "windwp/nvim-ts-autotag",
    ft = { "typescriptreact", "tsx" }, -- the plugin will load depend on file type (check lazy.nvim docs)
    config = function()
      require("nvim-ts-autotag").setup()
    end,
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
        "typescript-language-server",
        "yaml-language-server",
        "json-lsp",
        "emmet-ls",
        "gopls",
        "goimports",
        "pyright",
        "golines",
        "html-lsp",
        "css-lsp",
        "prettier",
        "stylua",
        "black",
        -- "shellcheck",
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
