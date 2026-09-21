return {
    "mason-org/mason-lspconfig.nvim",
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        "neovim/nvim-lspconfig",
    },
    opts = {
        ensure_installed = {
            -- "phpactor",
            "twiggy_language_server",
            "pyright",
        },
    },
    config = function(_, opts)
        vim.lsp.config.pyright = {}
        -- vim.lsp.config.phpactor = {
        --    on_attach = function(client, bufnr)
        --        vim.cmd("syntax on")
        --    end
        -- }

        require("mason-lspconfig").setup(opts)
    end,
}
