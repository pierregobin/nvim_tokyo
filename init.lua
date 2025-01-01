vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true
require("keymaps")
require("lazy-config")
require("plugins")
require("nvim-tree").setup()
require("tokyonight").setup({
    -- other configs
    on_colors = function(colors)
        colors.border = colors.orange
    end
})
require("buffer-line")
require("lualine-config")
require("hop-config")
require("nvim-tree-config")
require("nvim-treesitter-config")
require("telescope-config")
require("lsp-zero-config")
require("nvimcmp-config")
require("undotree-config")
require("barbar-config")
require("git-config")
require("terminal-config")
require("mini.align").setup()
require("mini.surround").setup({})
require("luasnip-config")
require("autocmd")
require("options")
require("colorful-winsep").setup({
    -- highlight for Window separator
    hi = {
        bg = "#10001E",
        fg = "#1F3442",
    },
    -- This plugin will not be activated for filetype in the following table.
    no_exec_files = { "packer", "TelescopePrompt", "mason", "CompetiTest", "NvimTree" },
    -- Symbols for separator lines, the order: horizontal, vertical, top left, top right, bottom left, bottom right.
    symbols = { "━", "┃", "┏", "┓", "┗", "┛" },
    -- Smooth moving switch
    smooth = true,
    anchor = {
        left = { height = 1, x = -1, y = -1 },
        right = { height = 1, x = -1, y = 0 },
        up = { width = 0, x = -1, y = 0 },
        bottom = { width = 0, x = 1, y = 0 },
    },
})
require('mini.sessions').setup({})

require("whichkeys-config")
require('mini.sessions').setup({})
require("mini.pairs").setup({})
--require("ocaml").setup({})
require('lspconfig').ocamllsp.setup {}
require('lspconfig').pyright.setup {}
