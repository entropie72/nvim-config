--Enable (broadcasting) snippet capability for completion
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

require 'lspconfig'.html.setup {
    capabilities = capabilities,
}

require 'lspconfig'.emmet_language_server.setup({
    filetypes = { "html", "javascriptreact", "typescriptreact", "typescript.tsx" }
})

require 'lspconfig'.cssls.setup {
    capabilities = capabilities,
}
