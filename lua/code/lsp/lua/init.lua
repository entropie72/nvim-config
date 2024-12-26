require('lspconfig').lua_ls.setup({
    settings = {
        Lua = {
            format = {
                enable = true,
                defaultConfig = {
                    indent_style = "space",
                    indent_size = "8"
                }
            },
        },
    }
})
