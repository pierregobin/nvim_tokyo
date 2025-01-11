return {
    -- Which-key Extension
    {
        "folke/which-key.nvim",
        tag = "v3.15.0",
        lazy = true,
    },
    -- Hop (Better Navigation)
    {
        "phaazon/hop.nvim",
        tag = "v2.0.3",
        lazy = true,
    },
    -- collection of lua library
    {
        'echasnovski/mini.nvim',
        tag = "v0.14.0"
    },
    -- Autocompletion via deoplete
    {
        'Shougo/deoplete.nvim',
        tag = "6.1"
    },
    -- Win separation
    {
        'nvim-zh/colorful-winsep.nvim',
        config = true,
        event = { "WinNew" },
    },
    -- Bufferline - to get tabs on top, create groups ...
    {
        'akinsho/bufferline.nvim',
        dependencies = 'nvim-tree/nvim-web-devicons',
        tag = "v4.9.0"
    },
    -- lualine : bottom
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        tag = "compat-nvim-0.6"
    },
    -- Colorscheme
    {
        'folke/tokyonight.nvim',
        tag = "v4.11.0"
    },
    -- neo-tree to browse file system
    {
        "nvim-neo-tree/neo-tree.nvim",
        tag = "3.27",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
            -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
        }
    },
    -- Nvimtree (File Explorer) -- duplicate of previous
    {
        'nvim-tree/nvim-tree.lua',
        tag = "v1.9.0",
        lazy = true,
        dependencies = {
            'nvim-lua/plenary.nvim',
            'nvim-tree/nvim-web-devicons',
            "MunifTanjim/nui.nvim",
        },
    },
    -- Language Server
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        dependencies = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },           -- Required
            { 'williamboman/mason.nvim' },         -- Optional
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },       -- Required
            { 'hrsh7th/cmp-nvim-lsp' },   -- Required
            { 'hrsh7th/cmp-buffer' },     -- Optional
            { 'hrsh7th/cmp-path' },       -- Optional
            { 'saadparwaiz1/cmp_luasnip' }, -- Optional
            { 'hrsh7th/cmp-nvim-lua' },   -- Optional

            -- Snippets
            { 'L3MON4D3/LuaSnip' },           -- Required
            { 'rafamadriz/friendly-snippets' }, -- Optional
        },
        --        config = function ()
        --            require "custom.completion"
        --        end
    },
    -- Telescope (Fuzzy Finder)
    -- Added these plugins to install Telescope
    {
        'nvim-telescope/telescope.nvim',
        tag = "0.1.8",
        lazy = true,
        dependencies = {
            { 'nvim-lua/plenary.nvim' },
        }
    },
    -- Treesitter
    {
        "nvim-treesitter/nvim-treesitter",
        tag = "v0.9.3",
        config = function()
            require("nvim-treesitter.configs").setup {
                highlight = {
                    enable = true,
                },
                ensure_installed = {
                    "vimdoc",
                    "luadoc",
                    "vim",
                    "lua",
                    "markdown"
                }
            }
        end,
    },
    -- Undo-Tree
    {
        "jiaoshijie/undotree",
        release      = "undotree v6.1",
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
    },
    -- Tabs as understood by any other editor
    {
        'romgrk/barbar.nvim',
        tag = "v1.9.1",
        dependencies = {
            'lewis6991/gitsigns.nvim',     -- OPTIONAL: for git status
            'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
        },
    },
    -- to ease writting surround char
    --    {'tpope/vim-surround',
    --    tag = "v2.2"
    --    },
    -- git branch viewer
    {
        "rbong/vim-flog",
        tag = "v3.0.0",
        lazy = true,
        cmd = { "Flog", "Flogsplit", "Floggit" },
        dependencies = {
            "tpope/vim-fugitive",
        },
    },
    -- All git stuffs are here
    -- Integration of Git
    {
        "tpope/vim-fugitive",
        tag = "v3.7"
    },
    -- Git Integration
    {
        "lewis6991/gitsigns.nvim",
        tag = "v0.9.0"
    },
    -- vim conflict to better handle conflict in vim
    {
        'akinsho/git-conflict.nvim',
        tag = "v2.1.0",
        config = true
    },
    -- Lazygit
    {
        "kdheepak/lazygit.nvim",
        cmd = {
            "LazyGit",
            "LazyGitConfig",
            "LazyGitCurrentFile",
            "LazyGitFilter",
            "LazyGitFilterCurrentFile",
        },
        -- optional for floating window border decoration
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
        -- setting the keybinding for LazyGit is done in whichkey config
    },
        -- amongst your other plugins
    { 'akinsho/toggleterm.nvim', version = "*", config = true },
    {
            "chrisgrieser/nvim-lsp-endhints",
            event = "LspAttach",
            opts = {}, -- required, even if empty
    },
    {
        {"farmergreg/vim-lastplace", version="v4.5.0"},
    }
}
