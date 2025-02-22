vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.api.nvim_set_keymap("t", "<C-_>", "<C-\\><C-n>", { noremap = true, silent = true })


require("config.lazy")

