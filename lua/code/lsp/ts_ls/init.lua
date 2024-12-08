require('lspconfig').ts_ls.setup({
    init_options = {
        plugins = {
            {
                name = "@vue/typescript-plugin",
                location = '/Users/hao/.bun/install/global/node_modules/@vue/typescript-plugin',
                languages = { "javascript", "typescript", "vue" },
            },
        },
    },
    filetypes = {
        "javascript",
        "typescript",
        "vue",
    }
})
