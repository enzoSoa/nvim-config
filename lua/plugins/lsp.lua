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
        ensure_installed = { "lua_ls", "ts_ls", "volar" },
        automatic_installation = true,
      })

      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup {}
      lspconfig.ts_ls.setup {}
      lspconfig.volar.setup {}
    end,
  },
  {
    "neovim/nvim-lspconfig",
  },
}
