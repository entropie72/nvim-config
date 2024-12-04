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
o.showtabline = 0
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
o.termguicolors = true
o.autoindent = true
-- bo.autoindent = true
o.undodir = "/Users/hao/.vim/undodir"
o.undofile = true
o.colorcolumn = "80"
o.fcs = "eob:*"
o.syntax = "on"
-- vim.api.nvim_set_hl("Normal", { ctermbg = 0, guibg = none }, false)


local imap_expr = function(lhs, rhs)
 vim.keymap.set('i', lhs, rhs, { expr = true })
end
imap_expr('<Tab>',   [[pumvisible() ? "\<C-n>" : "\<Tab>"]])
imap_expr('<S-Tab>', [[pumvisible() ? "\<C-p>" : "\<S-Tab>"]])
