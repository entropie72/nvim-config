require('conform').setup({
    format_on_save = {
        timeout_ms = 500,
        lsp_format = 'fallback'
    },
    formatters_by_ft = {
        typescript = { 'biome' },
        html = { 'superhtml' },
        vue = { 'prettier' },
        json = { 'biome' },
        swift = { 'swiftformat' },
        astro = { 'prettier' }
    },
})
