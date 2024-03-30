return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },
  --
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "bash-language-server",
        "typescript-language-server",
        "yaml-language-server",
        "clangd",
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
        "shellcheck",
        "svelte-language-server",
        "tailwindcss-language-server",
        "vue-language-server",
        -- "shopify-theme-check",
        "templ",
      },
    },
  },
  --
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      autotag = {
        enable = true,
      },
      ensure_installed = {
        -- defaults
        "vim",
        "lua",
        "templ",
        "vimdoc",

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
        "cpp",
        "zig",
        -- my custom stuff
        "go",
        "bash",
        "python",
        "svelte",
        "vue",
      },
    },
  },
  {
    "windwp/nvim-ts-autotag",
    ft = { "typescriptreact", "tsx", "liquid", "html", "templ" }, -- the plugin will load depend on file type (check lazy.nvim docs)
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
  -- {
  --   "hrsh7th/nvim-cmp",
  --   event = "InsertEnter",
  --   dependencies = {
  --     {
  --       -- snippet plugin
  --       "L3MON4D3/LuaSnip",
  --       dependencies = "rafamadriz/friendly-snippets",
  --       opts = { history = true, updateevents = "TextChanged,TextChangedI" },
  --       config = function(_, opts)
  --         require("luasnip").config.set_config(opts)
  --         require "nvchad.configs.luasnip"
  --       end,
  --     },
  --
  --     -- autopairing of (){}[] etc
  --     {
  --       "windwp/nvim-autopairs",
  --       opts = {
  --         fast_wrap = {},
  --         disable_filetype = { "TelescopePrompt", "vim" },
  --       },
  --       config = function(_, opts)
  --         require("nvim-autopairs").setup(opts)
  --
  --         -- setup cmp for autopairs
  --         local cmp_autopairs = require "nvim-autopairs.completion.cmp"
  --         require("cmp").event:on("confirm_done", cmp_autopairs.on_confirm_done())
  --       end,
  --     },
  --
  --     -- cmp sources plugins
  --     {
  --       "saadparwaiz1/cmp_luasnip",
  --       "hrsh7th/cmp-nvim-lua",
  --       "hrsh7th/cmp-nvim-lsp",
  --       "hrsh7th/cmp-buffer",
  --       "hrsh7th/cmp-path",
  --       "hrsh7th/cmp-nvim-lsp-signature-help",
  --     },
  --   },
  --   opts = function()
  --     local opts = require "nvchad.configs.cmp"
  --     table.insert(opts.sources, { name = "nvim_lsp_signature_help" })
  --     return opts
  --   end,
  --   config = function(_, opts)
  --     -- table.insert(opts.sources, { name = "nvim_lsp_signature_help" })
  --     require("cmp").setup(opts)
  --   end,
  -- },
}
