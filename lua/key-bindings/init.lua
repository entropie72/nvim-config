vim.g.mapleader = " "

local map = vim.api.nvim_set_keymap
local options = {noremap = true}
local silent_options = {noremap = true, silent = true}

-- buffer


-- mini.pick
map("n", '<leader>f', '<cmd> Pick files<CR>', options)

-- mini.files
map("n", '<C-n>', '<cmd>lua MiniFiles.open()<CR>', options)

