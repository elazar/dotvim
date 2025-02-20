return {
    "mfussenegger/nvim-lint",
    config = function()
        local lint = require("lint")
        lint.linters_by_ft = {
            -- php = {"phpstan"},
        }
        vim.api.nvim_create_autocmd(
            {
                "BufEnter",
                "InsertLeave",
                "TextChanged",
            },
            {
                callback = function()
                    lint.try_lint()
                end
            }
        )
    end,
}
