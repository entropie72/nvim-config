-- folding
--[[ vim.wo.foldmethod = 'expr'
vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()' ]]

require('nvim-treesitter.configs').setup {
	auto_install = false,
	indent  = {
		enable = true
	},

	incremental_selection = {
		enable = false
	}
}
