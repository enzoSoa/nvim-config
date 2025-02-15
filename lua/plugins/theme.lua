return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    init = function ()
      vim.cmd.colorscheme "catppuccin"
      vim.cmd.set "cursorline"
      vim.cmd.set "number"
      vim.cmd.set "expandtab"
      vim.cmd.set "shiftwidth=2"
      vim.cmd.set "nowrap"
    end,
  }
}
