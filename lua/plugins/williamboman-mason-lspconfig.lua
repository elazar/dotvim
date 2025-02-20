return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
    },
    config = function()
        local lspconfig = require("lspconfig")
        lspconfig.pyright.setup({})
        lspconfig.phpactor.setup({
            on_attach = function(client, bufnr)
                vim.cmd("syntax on")
            end
        })
    end,
}
