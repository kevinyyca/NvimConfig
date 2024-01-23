local opt = vim.opt

--- Line numbers ---
opt.relativenumber = true -- Show relative line numbers
opt.number = true -- Shows absolute line numbers on cursor line (When relative number is off all the other lines show absolute line numbers instead of relative)

--- Tabs and indentation ---
opt.tabstop = 2 -- Two spaces for tabs (prettier default)
opt.shiftwidth = 2 -- Two spaces for indent width
opt.expandtab = true -- Expand tabs to spaces
opt.autoindent = true -- Copy indent from current line when starting new one (Automatically create tabs when creating new lines)

--- Line wrapping ---
opt.wrap = false -- Disable line wrapping

--- Search settings ---
opt.ignorecase = true -- Ignore case when searching
opt.smartcase = true -- If you include mixed case in your search, it assumes you want case-sensitive

--- Cursor line ---
opt.cursorline = true -- Highlight the current line that the cursor is on

--- Appearance ---
opt.termguicolors = true -- Turn on termguicolors for some themes to work (Must use a true color terminal)
opt.background = "dark" -- Colorschemes that support light and dark themes will default to dark
opt.signcolumn = "yes" -- Show sign column so that text doesn't shift

--- Backspace ---
opt.backspace = "indent,eol,start" -- Allow backspace on indent, end of line or insert mode start position

--- Clipboard ---
opt.clipboard:append("unnamedplus") -- Use system clipboard when copying or pasting

--- Split windows ---
opt.splitright = true -- Default to splitting to the right when creating a vertical split
opt.splitbelow = true -- Default to splitting to the bottom when creating a horizontal split
