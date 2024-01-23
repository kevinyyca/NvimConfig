local keymap = vim.keymap

vim.g.mapleader = " "

--- Numbers ---
keymap.set("n", "<leader>=", "<C-a>", { desc = "Increment number at cursor" }) -- Increment number at cursor
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number at cursor" }) -- Decrement number at cursor

--- Split window managment ---
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- Split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- Split window horizontally
keymap.set("n", "<leader>s=", "<C-w>=", { desc = "Make split windows equal size" }) -- Make split windows equal size
keymap.set("n", "<leader>sx", ":close<CR>", { desc = "Close current split window" }) -- Close current split window
