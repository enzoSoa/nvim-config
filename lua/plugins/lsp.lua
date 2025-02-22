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
      require("mason-lspconfig").setup({
        ensure_installed = {
          "ast_grep",
          "clangd",
          "lua_ls",
          "ts_ls",
          "volar",
          "svelte",
          "html",
        },
        automatic_installation = true,
      })

      local lspconfig = require("lspconfig")
      lspconfig.ast_grep.setup {}
      lspconfig.clangd.setup {}
      lspconfig.lua_ls.setup {}
      lspconfig.ts_ls.setup {}
      lspconfig.volar.setup {}
      lspconfig.svelte.setup {}
      lspconfig.html.setup {}
    end,
  },
  {
    "neovim/nvim-lspconfig",
  },
}
