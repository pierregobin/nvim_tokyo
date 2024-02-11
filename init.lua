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
require("options")
require("whichkeys")
require("buffer-line")
require("lualine-config")
require("hop-config")
require("nvimtree-config")
require("nvim-treesitter-config")
require("telescope-config")
require("lsp-zero-config")
require("undotree-config")
require("git-config")

require'lspconfig'.ocamllsp.setup{}
