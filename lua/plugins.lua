
return {
    -- Which-key Extension
    {
    "folke/which-key.nvim",
    lazy = true,
    },
-- Hop (Better Navigation)
    {
        "phaazon/hop.nvim",
        lazy = true,
    },

   -- Bufferline 
    {
        'akinsho/bufferline.nvim',
        dependencies = 'nvim-tree/nvim-web-devicons'
    },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' }
    },-- Colorscheme
    {
        'folke/tokyonight.nvim',
    },
    -- Nvimtree (File Explorer)
    -- Added this reference to the initial file
    {
        'nvim-tree/nvim-tree.lua',
        lazy = true,
        dependencies = {
            'nvim-tree/nvim-web-devicons',
        },
    },
-- Added this plugin.
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        dependencies = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {'williamboman/mason.nvim'},           -- Optional
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},         -- Required
            {'hrsh7th/cmp-nvim-lsp'},     -- Required
            {'hrsh7th/cmp-buffer'},       -- Optional
            {'hrsh7th/cmp-path'},         -- Optional
            {'saadparwaiz1/cmp_luasnip'}, -- Optional
            {'hrsh7th/cmp-nvim-lua'},     -- Optional

            -- Snippets
            {'L3MON4D3/LuaSnip'},             -- Required
            {'rafamadriz/friendly-snippets'}, -- Optional
        }
    },
    -- Telescope (Fuzzy Finder)
    -- Added these plugins to install Telescope
    {
        'nvim-telescope/telescope.nvim',
        lazy = true,
        dependencies = {
            {'nvim-lua/plenary.nvim'},
        }
    },
    -- Treesitter
    -- Added this plugin to our initial config
    {
        "nvim-treesitter/nvim-treesitter",
    },
    -- Undo-Tree
    -- Added this plugin
    {
        "jiaoshijie/undotree",
      dependencies  = {
            "nvim-lua/plenary.nvim",
        },
    },}
