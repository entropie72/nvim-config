local custom_theme =  {
	normal = {
		a = {
			fg = '#02af5f',
			gui = 'bold'
		},
		c = {
			fg = '#9eadc7',
		}
	},
	insert = {
		a = {
			fg = '#fe5f87'
		},
	},
	visual = {
		a = {
			fg = '#be95ff'
		},
	},
	inactive = {
		c = {
			fg = '#545454'
		}
	}
}

require('lualine').setup({
	options = {
		theme = custom_theme,
		component_separators = '',
		section_separators = ''
	},
	sections = {
		-- lualine_a = { '" "' , 'mode' },
		lualine_a = { '"󰘳"' , 'mode' },
		lualine_b = { 'location' },
		lualine_c = {{
			'buffers',
			buffers_color = {
				active = 'lualine_c_normal',
				inactive = 'lualine_c_inactive'
			},
			symbols = {
				alternate_file = ''
			}
		}},
		lualine_x = {{
			'filename',
			path = 1
		}},
		lualine_y = { 'diff', 'progress' },
		lualine_z = { '' },
	},
})
