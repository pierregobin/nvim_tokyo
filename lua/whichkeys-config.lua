-- whichkey.lua

local status_ok, which_key = pcall(require, "which-key")
if not status_ok then
    return
end

which_key.add({

    { "<leader>|","<cmd>vsplit<CR>", desc="Vertical Split" },
    { "<leader>-", "<cmd>split<CR>", desc="Horizontal Split" },
    { "<leader>e", "<cmd>NvimTreeToggle<cr>", desc="Explorer" }, -- File Explorer
    { "<leader>k", "<cmd>bdelete<CR>", desc="Kill Buffer" },     -- Close current file
    { "<leader>p", "<cmd>Lazy<CR>", desc="Plugin Manager" },     -- Invoking plugin manager
    { "<leader>q", "<cmd>wqall!<CR>", desc="Quit" },             -- Quit Neovim after saving the file
    { "<leader>w", "<cmd>w!<CR>", desc="Save" },                 -- Save current file
    { "<leader>b", group = "buffers", expand = function()
        return require("which-key.extras").expand.buf()
    end
    },
    { "<leader>w", proxy = "<c-w>", group = "windows" }, -- proxy to window mappings
    { "<leader>f", group = "file" }, -- group
    { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find File", mode = "n" },
    { "<leader>ft", "<cmd>Telescope live_grep <cr>", desc="Find Text Pattern In All Files" },
    { "<leader>fr", "<cmd>Telescope oldfiles<cr>", desc="Open Recent File" },
    { "<leader>fn", desc = "New File" },
    { "<leader>f1", hidden = true }, -- hide this keymap
    { "<leader>g", group = "Git"},
    { "<leader>gj" ,"<cmd>lua require 'gitsigns'.next_hunk()<cr>", desc="Next Hunk"  },
    { "<leader>gk" ,"<cmd>lua require 'gitsigns'.prev_hunk()<cr>", desc="Prev Hunk"  },
    { "<leader>gl" ,"<cmd>lua require 'gitsigns'.blame_line()<cr>", desc="Blame" },
    { "<leader>gp" ,"<cmd>lua require 'gitsigns'.preview_hunk()<cr>", desc="Preview Hunk" },
    { "<leader>gr" ,"<cmd>lua require 'gitsigns'.reset_hunk()<cr>", desc="Reset Hunk" },
    { "<leader>gR" ,"<cmd>lua require 'gitsigns'.reset_buffer()<cr>", desc="Reset Buffer" },
    { "<leader>gs" ,"<cmd>lua require 'gitsigns'.stage_hunk()<cr>", desc="Stage Hunk" },
    { "<leader>gu" ,"<cmd>lua require 'gitsigns'.undo_stage_hunk()<cr>", desc="Undo Stage Hunk" },
    { "<leader>go" ,"<cmd>Telescope git_status<cr>", desc="Open changed file" },
    { "<leader>gb" ,"<cmd>Telescope git_branches<cr>", desc="Checkout branch" },
    { "<leader>gc" ,"<cmd>Telescope git_commits<cr>", desc="Checkout commit" },
    { "<leader>gd" ,"<cmd>Gitsigns diffthis HEAD<cr>", desc="Diff" },

    { "<leader>l", group = "LSP"},
    { "<leader>la", "<cmd>lua vim.lsp.buf.code_action()<cr>", desc="Code Action" },
    { "<leader>li", "<cmd>LspInfo<cr>", desc="Info" },
    { "<leader>ll", "<cmd>lua vim.lsp.codelens.run()<cr>", desc="CodeLens Action" },
    { "<leader>lr", "<cmd>lua vim.lsp.buf.rename()<cr>", desc="Rename" },
    { "<leader>ls", "<cmd>Telescope lsp_document_symbols<cr>", desc="Document Symbols" },
    { "<leader>lS", "<cmd>Telescope lsp_dynamic_workspace_symbols<cr>", desc="Workspace Symbols", },

    { "<leader>s", group = "Search"},
    {"<leader>sh",  "<cmd>Telescope help_tags<cr>", desc = "Find Help" },
    {"<leader>sm",  "<cmd>Telescope man_pages<cr>", desc = "Man Pages" },
    {"<leader>sr",  "<cmd>Telescope registers<cr>", desc = "Registers" },
    {"<leader>sk",  "<cmd>Telescope keymaps<cr>", desc = "Keymaps" },
    {"<leader>sc",  "<cmd>Telescope commands<cr>", desc = "Commands" },

    {
        -- Nested mappings are allowed and can be added in any order
        -- Most attributes can be inherited or overridden on any level
        -- There's no limit to the depth of nesting
        mode = { "n", "v" }, -- NORMAL and VISUAL mode
        { "<leader>q", "<cmd>q<cr>", desc = "Quit" }, -- no need to specify mode since it's inherited
        { "<leader>w", "<cmd>w<cr>", desc = "Write" },
    }
})

