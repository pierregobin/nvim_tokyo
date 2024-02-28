-- nvim-tree-config.lua

-- Open the file in r mode (don't modify file, just read)
local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then
    return
end



require('nvim-tree').setup {
    update_focused_file = {
        enable = true,
        update_cwd = true,
    },
    renderer = {
        icons = {
            show = {
                git = true,
            },
      git_placement = "after",
            glyphs = {
                default = "",
                symlink = "",
                folder = {
                    arrow_open = "",
                    arrow_closed = "",
                    default = "",
                    open = "",
                    empty = "",
                    empty_open = "",
                    symlink = "",
                    symlink_open = "",
                },
                git = {
              unstaged = "",
              staged = "✓",
              unmerged = "",
              renamed = "➜",
              untracked = "★",
              deleted = "",
              ignored = "◌",
--                     staged = "S",
--                     unmerged = "",
--                     renamed = "➜",
--                     untracked = "U",
--                     ignored = "◌",
                },
            },
        },
        highlight_git = true,
        root_folder_modifier = ":t",
        -- These icons are visible when you install web-devicons
        --        icons = {
        --            glyphs = {
        --                default = "",
        --                symlink = "",
        --                folder = {
        --                    arrow_open = "",
        --                    arrow_closed = "",
        --                    default = "",
        --                    open = "",
        --                    empty = "",
        --                    empty_open = "",
        --                    symlink = "",
        --                    symlink_open = "",
        --                },
        --                git = {
        --                    show = {
        --                        git=true,
        --                    },
        --                    unstaged = "",
        --                    staged = "S",
        --                    unmerged = "",
        --                    renamed = "➜",
        --                    untracked = "U",
        --                    deleted = "",
        --                    ignored = "◌",
        --                },
        --            },
    },
    diagnostics = {
        enable = true,
        show_on_dirs = true,
        icons = {
            hint = "",
            info = "",
            warning = "",
            error = "",
        },
    },
    git = {
        enable = true,
        show_on_dirs = true,
        show_on_open_dirs = true,
        disable_for_dirs = {},
        timeout = 400,
        cygwin_support = false,
    },
    view = {
        width = 30,
        side = "left",
        --mappings = {
            --list = {
             --   { key = { "l", "<CR>", "o" }, cb = tree_cb "edit" },
             --   { key = "h", cb = tree_cb "close_node" },
             --   { key = "v", cb = tree_cb "vsplit" },
            --},
        --},
    },
}

