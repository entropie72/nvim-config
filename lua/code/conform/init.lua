require('conform').setup({
    format_on_save = {
        timeout_ms = 500,
        lsp_format = 'fallback'
    },
    formatters_by_ft = {
        lua = { 'lua_ls' },
        typescript = { 'biome' },
        html = { 'superhtml' },
        vue = { 'volar' },
        json = { 'biome' },
        swift = { 'swiftformat' }
    },
})
