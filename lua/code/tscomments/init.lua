--[[ require('ts-comments').setup({
    lang = {
    }
}) ]]

vim.api.nvim_create_autocmd({ "FileType" }, {
    pattern = { "lua" },
    callback = function()
        vim.opt_local.commentstring = "-- %s"
    end,
})
