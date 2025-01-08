require('blink.cmp').setup({
    keymap = {
        preset = 'super-tab',
        ['<C-j>'] = { 'select_next', 'fallback' },
        ['<C-k>'] = { 'select_prev', 'fallback' },
        -- ['<CR>'] = { 'accept', 'fallback' },
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
            selection = function(ctx)
                return ctx.mode == 'manual'
            end
        },
        menu = {
            border = 'rounded',
            draw = {
                padding = 1,
                gap = 1,
                -- treesitter = true,
                -- columns = { { "label", "label_description", gap = 1 }, { "kind_icon", "kind" } }
            }
        },
        documentation = {
            auto_show = true,
            auto_show_delay_ms = 1000,
            window = {
                border = 'rounded'
            },
            treesitter_highlighting = true,
        },
        --[[ ghost_text = {
            enabled = true
        } ]]
    },

    snippets = {
        -- <1> fix snippet behavior, copy from the official README.md
        --[[ enabled = function(ctx)
            return ctx ~= nil and ctx.trigger.kind == vim.lsp.protocol.CompletionTriggerKind.TriggerCharacter
        end, ]]
        -- </1>

        -- <2> luasnip, copy from the official README.md
        -- expand = function(snippet) require('luasnip').lsp_expand(snippet) end,

        -- active = function(filter)
        -- if filter and filter.direction then
        -- return require('luasnip').jumpable(filter.direction)
        -- end
        -- return require('luasnip').in_snippet()
        -- end,

        -- jump = function(direction) require('luasnip').jump(direction) end,
        -- </2>
    },

    sources = {
        default = {
            'lsp',
            'path',
            'snippets'
        },
        providers = {
            snippet = {
                name = 'Snippets',
                module = 'blink.cmp.sources.snippets',
                opts = {
                    friendly_snippets = true,
                    search_paths = { vim.fn.stdpath('config') .. '/snippets' },
                }
            }
        }
    },
    appearance = {
        kind_icons = {
            Color = ''
        }
    }
})
