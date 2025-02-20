vim.keymap.set("n", "-", ":NvimTreeToggle<CR>")

local bmui = require("buffer_manager.ui")
vim.keymap.set("n", "<Leader>b", bmui.toggle_quick_menu, { noremap = true })

vim.keymap.set("n", "<Leader>e", vim.diagnostic.open_float, { noremap = true })
