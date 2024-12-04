--[[ require('ayu').setup({
		mirage = true,
    overrides = {
        Normal = { bg = "None" },
        ColorColumn = { bg = "None" },
        SignColumn = { bg = "None" },
        Folded = { bg = "None" },
        FoldColumn = { bg = "None" },
        -- CursorLine = { bg = "None"}
        -- CursorColumn = { bg = "None" },
        WhichKeyFloat = { bg = "None" },
        VertSplit = { bg = "None" },
    },
})
require('ayu').colorscheme() ]]

require('nightfox').setup({
	options = {
		transparent = true,
		styles = {
			keywords = "bold",
			comments = "italic"
		}
	}
})


vim.cmd[[colorscheme carbonfox]]
