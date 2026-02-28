vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "<C-c>", "<Esc>")

-- Coc
vim.keymap.set("n", "<leader>gr", "<cmd><Plug>(coc-references)" )
vim.keymap.set("n", "<leader>gd", "<Plug>(coc-definition)" )
vim.keymap.set("n", "<leader>t", "<cmd>:NERDTree<cr>" )
vim.keymap.set("n", " <leader>rn", "<Plug>(coc-rename)")

-- Prettier
vim.keymap.set("n", "<leader><leader>p", ":Prettier<cr>" )
vim.keymap.set("n", "<leader><leader>g", ":GoFmt<cr>" )
vim.keymap.set("n", "<leader><leader>b", ":Black<cr>" )
vim.keymap.set("n", "<leader><leader>u", ":UndotreeToggle<cr>" )

-- telescope
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>")
vim.keymap.set("n", "<leader>lg", "<cmd>Telescope live_grep<CR>")
vim.keymap.set("n", "<leader>dl", "<cmd>Telescope diagnostics<cr>")    

-- navigation
vim.keymap.set("n", "L", "<cmd>bnext<cr>")
vim.keymap.set("n", "H", "<cmd>bprevious<cr>")
vim.keymap.set("n", "F", "<cmd>HopPattern<cr>")

