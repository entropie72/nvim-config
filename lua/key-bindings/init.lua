vim.g.mapleader = " "

local map = vim.api.nvim_set_keymap
local options = {noremap = true}
local silent_options = {noremap = true, silent = true}

map("n", '<C-n>', '<cmd>lua MiniFiles.open()<CR>', options)
