-- Use lazy.nvim for plugin management

-- Bootstrap: https://lazy.folke.io/installation
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- Latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

-- Setup
require("lazy").setup("plugins", {

    -- Configuration: https://lazy.folke.io/configuration

    -- Color scheme used when installing plugins
    install = { colorscheme = { "sorbet" } },

    -- Automatically check for plugin updates
    checker = { enabled = true, notify = false },

    -- Disable luarocks as it's (as of yet) unneeded
    rocks = { enabled = false },

    -- Disable icons
    ui = {
        icons = {
            cmd = "",
            config = "",
            event = "",
            favorite = "",
            ft = "",
            init = "",
            import = "",
            keys = "",
            lazy = "",
            loaded = "●",
            not_loaded = "○",
            plugin = "",
            runtime = "",
            require = "",
            source = "",
            start = "",
            task = "",
            list = {
                "●",
                "➜",
                "★",
                "‒",
            },
        },
    },

})
