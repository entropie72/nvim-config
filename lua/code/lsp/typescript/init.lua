-- <config for vue ^2.0.0>
local vue_language_server_path = '/Users/hao/.bun/install/global/node_modules/@vue/language-server/'

require('lspconfig').ts_ls.setup({
    init_options = {
        plugins = {
            {
                name = "@vue/typescript-plugin",
                location = vue_language_server_path,
                languages = { "vue" },
            },
        },
    },
    filetypes = {
        -- "javascript",
        -- "typescript",
        "vue",
    }
})

require('lspconfig').vtsls.setup({})
