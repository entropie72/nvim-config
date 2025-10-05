--[[ vim.lsp.config.volar.setup {
    -- filetypes = { 'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue', 'json' },
    init_options = {
        typescript = {
            tsdk = '/Users/hao/.bun/install/global/node_modules/typescript/lib',
        }
    }
} ]]

vim.lsp.config('volar', {})
