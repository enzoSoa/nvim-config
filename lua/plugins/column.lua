return {
  {
    "ecthelionvi/NeoColumn.nvim",
    opts = {},
    config = function()
      require("NeoColumn").setup()
      vim.keymap.set("n", "<leader>h", "<cmd>ToggleNeoColumn<cr>", { noremap = true, silent = true })
    end,
  },
}
