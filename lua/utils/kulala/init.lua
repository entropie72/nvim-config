vim.filetype.add({
	extension = {
		['http'] = 'http',
	}
})

require('kulala').setup({
	display_mode = 'split',
	debug = true,
})
