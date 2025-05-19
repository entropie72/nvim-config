-- folding
--[[ vim.wo.foldmethod = 'expr'
vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()' ]]
require('nvim-treesitter.configs').setup
{
    highlight = {
        enable = true
    },
    ensure_installed = { "javascript", "typescript", "tsx", "vue", "html", "css" },
    auto_install = false,
    indent = {
        enable = false
    },
    incremental_selection = {
        enable = false
    }
}
