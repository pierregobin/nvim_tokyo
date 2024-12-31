
-- nvim-cmp configuration
local cmp = require('cmp')
cmp.setup({
    mapping = cmp.mapping.preset.insert({
        ['<C-n>'] = cmp.mapping.select_next_item{ behaviour = cmp.SelectBehavior.insert},
        ['<C-p>'] = cmp.mapping.select_prev_item{ behaviour = cmp.SelectBehavior.insert},
        ['<C-y>'] = cmp.mapping(
            cmp.mapping.confirm {
                behaviour = cmp.ConfirmBehavior.insert,
                select = true,
            },
            { "i","c" }
        ),
        ['<C-d>'] = cmp.mapping.scroll_docs(-4),
        ['<C-u>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.close(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
    }),
    sources = {
        { name = 'nvim_lsp' },
        { name = 'buffer' },
        { name = 'path' },
        { name = 'cmdline' },
        { name = 'luasnip' },  -- You can add this if using luasnip
    },
    snippet = {
        expand = function(args)
            require("luasnip").lsp_expand(args.body)
        end,
    },
})

-- Enable nvim-cmp for command line mode
cmp.setup.cmdline(':', {
    sources = {
        { name = 'cmdline' },
        { name = 'path' },
    },
})
