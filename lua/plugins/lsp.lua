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
}
