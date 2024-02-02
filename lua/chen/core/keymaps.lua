local keymap = vim.keymap

vim.g.mapleader = " "

--- Numbers ---
keymap.set("n", "<leader>=", "<C-a>", { desc = "Increment number at cursor" }) -- Increment number at cursor
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number at cursor" }) -- Decrement number at cursor

--- Split window managment ---
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- Split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- Split window horizontally
keymap.set("n", "<leader>s=", "<C-w>=", { desc = "Make split windows equal size" }) -- Make split windows equal size
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split window" }) -- Close current split window

--- Tab managment ---
keymap.set("n", "<leader>te", ":tabedit ", { desc = "Edit specified file in new tab" }) -- Edit specified file in new tab
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- Open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- Close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) -- Go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) -- Go to previous tab


--- Other keymaps ---
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" }) -- Exit insert mode with jk
keymap.set("n", "<leader>nh", "<cmd>nohl<CR>", { desc = "Clear search highlights" }) -- Clear search highlights
keymap.set("n", "x", '"_x')

keymap.set("n", "fw", "<cmd>w<CR>", { desc = "Save the buffer"} ) -- Save the buffer
keymap.set("n", "fq", "<cmd>wq<CR>", { desc = "Save the buffer and quit"} ) -- Save the buffer and quit
