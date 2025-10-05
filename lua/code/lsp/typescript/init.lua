-- <config for vue ^2.0.0>
local vue_language_server_path = '/Users/hao/.bun/install/global/node_modules/@vue/language-server/'

vim.lsp.config('tl_ls', {
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

vim.lsp.config('vtsls', {})
