vim.cmd.highlight("IndentLine guifg=#545454")
vim.cmd.highlight("IndentLineCurrent guifg=#909090")

require("indentmini").setup({})

--[[ require('hlchunk').setup({
    indent = {
        enable = true
    },
    chunk = {
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
    }
}) ]]

-- require('mini.indentscope').setup({})
