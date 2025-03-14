---@diagnostic disable: undefined-global

return {
  {
    "zakissimo/smoji.nvim",
    cmd="Smoji",
    keys = {
      { "<leader><leader>e", "<cmd>Smoji<cr>", desc = "Git[e]moji" },
    },
    config = function()
      require("smoji")
    end,
  },
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require('gitsigns').setup({
        signs = {
          changedelete = { text = '' },
        },
        signs_staged = {
          changedelete = { text = '' },
        },
        current_line_blame = true,
        current_line_blame_opts = {
          virt_text_pos = 'right_align',
          delay = 10,
        },
      })

      vim.keymap.set("n", "<leader>gg", "<cmd>Gitsigns preview_hunk_inline<cr>", { noremap = true, silent = true })
      vim.keymap.set("n", "<leader>gr", "<cmd>Gitsigns reset_hunk<cr>", { noremap = true, silent = true })
      vim.keymap.set("n", "<leader>ga", "<cmd>Gitsigns stage_hunk<cr>", { noremap = true, silent = true })
      vim.keymap.set("n", "<leader>gb", "<cmd>Gitsigns blame<cr>", { noremap = true, silent = true })
      vim.keymap.set("n", "<leader>gj", "<cmd>Gitsigns nav_hunk next<cr>", { noremap = true, silent = true })
      vim.keymap.set("n", "<leader>gk", "<cmd>Gitsigns nav_hunk prev<cr>", { noremap = true, silent = true })
    end,
  },
  {'akinsho/git-conflict.nvim', version = "*", config = true},
}
