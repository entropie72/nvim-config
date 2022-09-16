local o = vim.o
local wo = vim.wo
local bo = vim.bo

vim.cmd("filetype plugin indent on")
bo.smartindent = true
o.shortmess = o.shortmess .. "c"
o.hidden = true
o.whichwrap = "b,s,<,>,[,],h,l"
o.pumheight = 10
o.fileencoding = "utf-8"
o.cmdheight = 1
o.showtabline = 2
o.showmode = false
o.backup = false
o.writebackup = false
o.clipboard = "unnamedplus"
o.hlsearch = false
o.ignorecase = true
o.scrolloff = 10
o.sidescrolloff = 10
o.mouse = "a"
wo.wrap = false
wo.number = true
wo.relativenumber = true
o.cursorline = true
wo.signcolumn = "yes:1"
o.tabstop = 2
bo.tabstop = 2
o.softtabstop = 2
o.shiftwidth = 2
bo.shiftwidth = 2
o.autoindent = true
-- bo.autoindent = true
o.undodir = "/Users/kaos/.vim/undodir"
o.undofile = true
o.colorcolumn = "80"
o.fcs = "eob:*"
o.syntax = "on"
vim.highlight.create("Normal", { ctermbg = 0, guibg = none }, false)

vim.cmd [[
	set termguicolors
	set textwidth=80
	au BufRead, BufNewFile * setlocal textwidth=80
  highlight NvimTreeFolderIcon guibg=blue
	let g:AutoPairsFlyMode = 0
]]
