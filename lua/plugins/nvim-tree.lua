return {
    "nvim-tree/nvim-tree.lua",
    lazy = false,
    config = function()
        require("nvim-tree").setup({
            respect_buf_cwd = true,
            update_focused_file = {
                enable = true,
                update_root = {
                    enable = true,
                },
            },
            renderer = {
                icons = {
                    show = {
                        file = false,
                        folder = false,
                        folder_arrow = false,
                        modified = false,
                    }
                }
            }
        })
    end,
}
