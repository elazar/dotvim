return {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    lazy = false,
    build = ":TSUpdate",
    config = function()
        local ts = require("nvim-treesitter")

        vim.api.nvim_create_autocmd("FileType", {
            callback = function(ev)
                local lang = vim.treesitter.language.get_lang(ev.match) or ev.match

                if vim.list_contains(ts.get_available(), lang)
                    and not vim.list_contains(ts.get_installed(), lang) then
                    ts.install({ lang }):wait(120000)
                end

                local ok = pcall(vim.treesitter.start)
                if ok then
                    vim.bo[ev.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
                end
            end,
        })
    end,
}
