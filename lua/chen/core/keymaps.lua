local keymap = vim.keymap

vim.g.mapleader = " "

--- Numbers ---
keymap.set("n", "<leader>=", "<C-a>", { desc = "Increment number at cursor" }) -- Increment number at cursor
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number at cursor" }) -- Decrement number at cursor
