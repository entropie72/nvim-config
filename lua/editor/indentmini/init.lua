vim.cmd.highlight('IndentLine guifg=#363636')
vim.cmd.highlight('IndentLineCurrent guifg=#818181')

--[[ require('indentmini').setup({
	exclude = { 'html' }
}) ]]

require('hlchunk').setup({
	indent = {
		enable = true
	},
	--[[ chunk = {
		enable = true,
		duration = 0,
		delay = 0,
		error_sign = false,
		chars = {
			horizontal_line = "─",
			vertical_line = "│",
			left_top = "╭",
			left_bottom = "╰",
			right_arrow = "",
		}
	} ]]
})

-- require('mini.indentscope').setup({})
