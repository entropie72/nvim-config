vim.g.mapleader = " "

local map = vim.api.nvim_set_keymap
local options = {noremap = true}
local silent_options = {noremap = true, silent = true}

-- buffer
map("n", '<leader>d', '<cmd>bdelete<CR>', options)
map("n", '<leader>n', '<cmd>bnext<CR>', options)
map("n", '<leader>p', '<cmd>bprevious<CR>', options)

-- navigate
map("n", "G", "Gzz", options)

-- mini.pick
map("n", '<leader>f', '<cmd>Pick files<CR>', options)
map("n", '<leader>g', '<cmd>Pick grep_live<CR>', options)
map("n", '<leader>b', '<cmd>Pick buffers<CR>', options)

-- mini.files
map("n", '<C-n>', '<cmd>lua MiniFiles.open()<CR>', options)

