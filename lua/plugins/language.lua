return {
  {
    "williamboman/mason.nvim",
    cmd = "Mason",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      local lspList = {
        "ast_grep",
        "clangd",
        "lua_ls",
        "ts_ls",
        "volar",
        "svelte",
        "html",
        "rust_analyzer",
      }

      require("mason-lspconfig").setup({
        ensure_installed = lspList,
        automatic_installation = true,
      })

      local lspconfig = require("lspconfig")
      for _, lsp in pairs(lspList) do
        lspconfig[lsp].setup {}
      end
    end,
  },
  {
    "neovim/nvim-lspconfig",
  },
  {
    'dense-analysis/ale',
    config = function()
        -- Configuration goes here.
        local g = vim.g

        g.ale_ruby_rubocop_auto_correct_all = 1

        local jsLike = {'eslint', 'prettier'}
        g.ale_linters = {
          javascript = jsLike,
          typescript = jsLike,
          javascriptreact = jsLike,
          typescriptreact = jsLike,
          vue = jsLike,
          svelte = jsLike,
          ruby = {'rubocop', 'ruby'},
          lua = {'lua_language_server'}
        }

        g.ale_fixers = {
          javascript = jsLike,
          typescript = jsLike,
          javascriptreact = jsLike,
          typescriptreact = jsLike,
          vue = jsLike,
          svelte = jsLike,
        }

        g.ale_async = 1

        g.ale_fix_on_save = 1
    end
  },
  {
  "folke/trouble.nvim",
  opts = {}, -- for default options, refer to the configuration section for custom setup.
  cmd = "Trouble",
  keys = {
    {
      "<leader>xx",
      "<cmd>Trouble diagnostics toggle<cr>",
      desc = "Diagnostics (Trouble)",
    },
    {
      "<leader>xX",
      "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
      desc = "Buffer Diagnostics (Trouble)",
    },
    {
      "<leader>cs",
      "<cmd>Trouble symbols toggle focus=false<cr>",
      desc = "Symbols (Trouble)",
    },
    {
      "<leader>cl",
      "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
      desc = "LSP Definitions / references / ... (Trouble)",
    },
    {
      "<leader>xL",
      "<cmd>Trouble loclist toggle<cr>",
      desc = "Location List (Trouble)",
    },
    {
      "<leader>xQ",
      "<cmd>Trouble qflist toggle<cr>",
      desc = "Quickfix List (Trouble)",
    },
  },
}
}
