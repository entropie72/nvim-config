--Enable (broadcasting) snippet capability for completion
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

vim.lsp.config('html', {
    capabilities = capabilities,
})

vim.lsp.config('emmet_language_server', {
    filetypes = { "html", "javascriptreact", "typescriptreact", "typescript.tsx" }
})

vim.lsp.config('cssls', {
    capabilities = capabilities,
})
