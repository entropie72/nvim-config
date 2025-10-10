require("ts_context_commentstring").setup({
	enable_autocmd = false,
})

require("Comment").setup({
	toggler = {
		line = "<leader>/",
		block = "gbc",
	},
	opleader = {
		line = "<leader>/",
		block = "gbc",
	},
	pre_hook = require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook(),
})
