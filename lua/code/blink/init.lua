require('blink.cmp').setup({
    keymap = {
        preset = 'super-tab',
        ['<C-j>'] = { 'select_next', 'fallback' },
        ['<C-k>'] = { 'select_prev', 'fallback' },
        ['<CR>'] = { 'accept', 'fallback' },
        ['<C-o>'] = { 'show', 'show_documentation', 'hide_documentation' },
        ['<C-n>'] = { 'snippet_forward', 'fallback' },
        ['<C-p>'] = { 'snippet_backward', 'fallback' },
    },

    completion = {
        accept = {
            auto_brackets = {
                enabled = true,
                default_brackets = { '(', ')' },
            },
        },
        list = {
            -- selection = 'preselect'
            selection = 'preselect'
        },
        menu = {
            border = 'rounded',
            draw = {
                padding = 1,
                gap = 1,
                treesitter = true,
                -- columns = { { "label", "label_description", gap = 1 }, { "kind_icon", "kind" } }
            }
        },
        documentation = {
            auto_show = true,
            auto_show_delay_ms = 1000,
            window = {
                border = 'rounded'
            }
        },
        ghost_text = {
            enabled = true
        }
    },

    snippets = {
        enabled = function(ctx)
            return ctx ~= nil and ctx.trigger.kind == vim.lsp.protocol.CompletionTriggerKind.TriggerCharacter
        end,

        expand = function(snippet) require('luasnip').lsp_expand(snippet) end,

        active = function(filter)
            if filter and filter.direction then
                return require('luasnip').jumpable(filter.direction)
            end
            return require('luasnip').in_snippet()
        end,

        jump = function(direction) require('luasnip').jump(direction) end,
    },

    sources = {
        completion = {
            enabled_providers = {
                'lsp',
                'path',
                'snippets',
                'luasnip',
            }
        },
        providers = {
            --[[ snippet = {
                name = 'Snippets',
                module = 'blink.cmp.sources.snippets',
                opts = {
                    friendly_snippets = true,
                    search_paths = { vim.fn.stdpath('config') .. '/snippets' },
                }
            } ]]
        }
    }
})
