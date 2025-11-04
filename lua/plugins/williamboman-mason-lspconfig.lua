return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
    },
    config = function()
        vim.lsp.config.pyright = {}
        -- vim.lsp.config.phpactor = {
        --    on_attach = function(client, bufnr)
        --        vim.cmd("syntax on")
        --    end
        -- }
    end,
}
