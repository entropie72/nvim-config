require('plug-ins.deps').setup()
local add = MiniDeps.add

-- editor
add('EdenEast/nightfox.nvim')
add('projekt0n/github-nvim-theme')
add('echasnovski/mini.icons')
add('echasnovski/mini.files')
add('echasnovski/mini.pick')
add('echasnovski/mini.move')
add('echasnovski/mini.notify')
add('nvimdev/indentmini.nvim')
add('echasnovski/mini.pairs')
add('echasnovski/mini.indentscope')
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
add('kylechui/nvim-surround')
add({
    source = 'saghen/blink.cmp',
    checkout = 'v1.7.0'
})
add('L3MON4D3/LuaSnip')
add('rafamadriz/friendly-snippets')
add('JoosepAlviste/nvim-ts-context-commentstring')
add('numToStr/Comment.nvim')

-- utils
add('mistweaverco/kulala.nvim')
