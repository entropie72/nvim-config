require('plug-ins.deps').setup()
local add = MiniDeps.add

-- editor
add('EdenEast/nightfox.nvim')
add('echasnovski/mini.icons')
add('echasnovski/mini.files')
add('echasnovski/mini.pick')
add('echasnovski/mini.move')
add('echasnovski/mini.notify')
add('nvimdev/indentmini.nvim')
add('echasnovski/mini.pairs')
add('nvim-lualine/lualine.nvim')
add('shellRaining/hlchunk.nvim')
add('lewis6991/gitsigns.nvim')
add({
	source = 'folke/noice.nvim',
	depends = { 'MunifTanjim/nui.nvim',
		'rcarriga/nvim-notify'
	},
})

-- code
add('folke/ts-comments.nvim')
add('neovim/nvim-lspconfig')
add('nvim-treesitter/nvim-treesitter')
add('stevearc/conform.nvim')
add({
	source = 'saghen/blink.cmp',
	checkout = 'v0.7.3'
})

-- utils
add('mistweaverco/kulala.nvim')
