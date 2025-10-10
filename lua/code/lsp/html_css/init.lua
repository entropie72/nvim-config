--Enable (broadcasting) snippet capability for completion
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

-- vim.lsp.enable('html', {
--     capabilities = capabilities,
-- })
--
vim.lsp.enable("emmet_language_server", {
	filetypes = { "html", "javascriptreact", "typescriptreact", "typescript.tsx" },
})

vim.lsp.enable("cssls", {
	capabilities = capabilities,
})
