return {
  {
    "nvim-tree/nvim-tree.lua",
    cmd = "NvimTreeToggle",
    lazy = false,
    config = function()
      require("nvim-tree").setup({
        actions = {
          open_file = {
            quit_on_open = true,
          },
        },
        sort = {
          sorter = "case_sensitive",
        },
        view = {
          width = 30,
        },
        tab = {
          sync = {
            open = true,
            close = true,
          },
        },
        renderer = {
          group_empty = true,
        },
        filters = {
          dotfiles = false,
        },
        git = {
          ignore = false,
        },
      })

      local api = require("nvim-tree.api")
      vim.keymap.set("n", "<leader>t", api.tree.toggle, { desc = "Nvim-tree toggle tree" })
    end,
  }
}

