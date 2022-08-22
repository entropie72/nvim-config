local lsp = require("lspconfig")
local coq = require("coq")
local fmt = require("lsp-format")
fmt.setup {}
lsp.tsserver.setup(coq.lsp_ensure_capabilities({
	on_attach = fmt.on_attach,
	root_dir = require("lspconfig").util.root_pattern("package.json", "tsconfig.json", "jsconfig.json"),
}))

lsp.emmet_ls.setup({
	on_attach = fmt.on_attach,
	filetypes = { 'html', 'typescriptreact', 'javascriptreact', 'css' },
})

lsp.sumneko_lua.setup {
	on_attach = fmt.on_attach,
	settings = {
		Lua = {
			runtime = {
				-- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
				version = 'LuaJIT',
			},
			diagnostics = {
				-- Get the language server to recognize the `vim` global
				globals = { 'vim' },
			},
			workspace = {
				-- Make the server aware of Neovim runtime files
				library = vim.api.nvim_get_runtime_file("", true),
			},
			-- Do not send telemetry data containing a randomized but unique identifier
			telemetry = {
				enable = false,
			},
		},
	},
}

lsp.gopls.setup(coq.lsp_ensure_capabilities())
vim.cmd [[
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'
]]
vim.g.markdown_fenced_languages = {
	"ts=typescript"
}

-- lsp.denols.setup({
-- 	capabilities = capabilities,
-- 	on_attach = fmt.on_attach,
-- })

lsp.volar.setup(coq.lsp_ensure_capabilities({
	on_attach = fmt.on_attach,
	init_options = {
		typescript = {
			serverPath = "/Users/kaos/Library/pnpm/global/5/node_modules/typescript/lib/tsserverlibrary.js"
		},
	},
}))

lsp.svelte.setup(coq.lsp_ensure_capabilities({
	on_attach = fmt.on_attach
}))

lsp.tailwindcss.setup(coq.lsp_ensure_capabilities({
	on_attach = fmt.on_attach,
	root_dir = require("lspconfig").util.root_pattern('tailwind.config.js', 'tailwind.config.cjs', 'tailwind.config.ts',
		'unocss.config.js',
		'unocss.config.ts')
}))

lsp.dartls.setup(coq.lsp_ensure_capabilities({
	on_attach = fmt.on_attach,
}))

-- lsp.rust_analyzer.setup({})
-- vim.cmd("let g:rustfmt_autosave = 1")
