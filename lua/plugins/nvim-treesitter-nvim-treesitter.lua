return {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup({
            sync_install = false,
            auto_install = true,
            -- ensure_installed = { "php", "json" },
            highlight = {
                enable = true,
                -- additional_vim_regex_highlighting = { "php" },
                additional_vim_regex_highlighting = false,
            },
            indent = {
                enable = true,
            },
        })
    end,
}
