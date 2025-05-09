--
vim.keymap.set('n', '<leader>e', ':lua ToggleAndReturnToBuffer()<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>w', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

-- window management
vim.keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })     -- split window vertically
vim.keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })   -- split window horizontally
vim.keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })      -- make split windows equal width & height
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window
