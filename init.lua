---@diagnostic disable: undefined-global
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.api.nvim_set_keymap("t", "<C-_>", "<C-\\><C-n>", { noremap = true, silent = true })

require("config.lazy")

local telescope = require("telescope.builtin")
local function telescopeSelectionSearch(searchType)
  vim.api.nvim_exec('normal! y', false)
  telescope[searchType]({default_text = vim.fn.getreg('"')})
end

vim.keymap.set("v", "sf", 'y/<C-r>0', { noremap = true, silent = false })
vim.keymap.set("v", "st", function() telescopeSelectionSearch("find_files")end, { noremap = true, silent = false })
vim.keymap.set("v", "sg", function() telescopeSelectionSearch("live_grep")end, { noremap = true, silent = false })

