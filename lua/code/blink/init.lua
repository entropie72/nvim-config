require('blink.cmp').setup({
	keymap = {
		preset = 'super-tab',
		['<C-j>'] = { 'select_next', 'fallback' },
		['<C-k>'] = { 'select_prev', 'fallback' },
		['<CR>'] = { 'accept', 'fallback' },
    ['<C-o>'] = { 'show', 'show_documentation', 'hide_documentation' },
	},

	completion = {
		accept = {
			auto_brackets = {
				enabled = true
			}
		},
		list = {
			selection = 'preselect'
		},
		menu = {
			border = 'rounded',
			draw = {
				padding = 1,
				gap = 1,
				treesitter = true
			}
		},
		documentation = {
			auto_show = true,
			auto_show_delay_ms = 1000
		},
	},

	sources = {
		completion = {
			enabled_providers = { 'lsp', 'path', 'snippets' }
		}
	}
})

