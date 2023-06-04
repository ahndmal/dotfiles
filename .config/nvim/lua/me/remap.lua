vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "<C-c>", "<Esc>")
vim.keymap.set("n", "<leader><leader>p", ":Prettier<cr>")
vim.keymap.set("n", " <leader>rn", "<Plug>(coc-rename)")
vim.keymap.set("n", "<leader>gd", "<Plug>(coc-definition)" )

-- Coc
vim.keymap.set("n", "<leader>gr", "<cmd><Plug>(coc-references)" )
vim.keymap.set("n", "<leader>t", "<cmd>:NERDTree<cr>" )

-- prettier
vim.keymap.set("n", "<leader><leader>p", ":Prettier<cr>" )
vim.keymap.set("n", "<leader><leader>g", ":GoFmt<cr>" )
vim.keymap.set("n", "<leader><leader>b", ":Black<cr>" )
vim.keymap.set("n", "<leader><leader>u", ":UndotreeToggle<cr>" )

-- telescope
vim.keymap.set("n", "<leader>lg", "<cmd>Telescope live_grep<CR>")
vim.keymap.set("n", "<leader>dl", "<cmd>Telescope diagnostics<cr>")    

-- navigation
vim.keymap.set("L", "<cmd>bnext<cr>")
vim.keymap.set("H", "<cmd>bprevious<cr>")
vim.keymap.set("F", "<cmd>HopPattern<cr>")


