-- vim.cmd [[
-- set foldmethod=expr
--set foldexpr=nvim_treesitter#foldexpr()
-- ]]
--

require("nvim-treesitter.configs").setup(
	{
		ensure_installed = {},
		highlight = {
			enable = true
		},
		indent = {
			enable = true
		}
	}
)
