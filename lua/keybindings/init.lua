vim.g.mapleader = " "

local map = vim.api.nvim_set_keymap
local options = {noremap = true}
local silent_options = {noremap = true, silent = true}

-- editor
map("n", "G", "Gzz", options)
-- map("n", "<CR>", "o<Esc>k", options)
map("n", "<C-o>", "i<CR><Esc>b", options)
map("v", "<", "<gv", silent_options)
map("v", ">", ">gv", silent_options)

-- nvim-tree
map('n', '<C-n>', '<cmd>NvimTreeToggle<CR>', options )

-- chadtree
-- map("n", "<C-n>", "<cmd>CHADopen<cr>", options)

-- bufferline
map("n", "<leader>n", "<cmd>BufferLineCycleNext<CR>", silent_options)
map("n", "<leader>p", "<cmd>BufferLineCyclePrev<CR>", silent_options)
map("n", "<leader>d", "<cmd>bdelete<CR>", silent_options)

-- telescope
map("n", "<leader>f", "<cmd>Telescope find_files<CR>", silent_options)
map("n", "<C-p>", "<cmd>Telescope find_files hidden=true<CR>", silent_options)
map("n", "<leader>g", "<cmd>Telescope live_grep<CR>", silent_options)

-- saga
map("n", "K", "<cmd>Lspsaga hover_doc<CR>", silent_options)
map("n", "ca", "<cmd>Lspsaga code_action<CR>", silent_options)
map("n", "<leader>;", "<cmd>Lspsaga diagnostic_jump_next<CR>", silent_options)
map("n", "<leader>r", "<cmd>Lspsaga rename<CR>", silent_options)

-- vsnip
-- map("i", "<Tab>", "vsnip#jumpable(1)", silent_options)
