local opt = vim.opt

--- Line numbers ---
opt.relativenumber = true -- Show relative line numbers
opt.number = true -- Shows absolute line numbers on cursor line (When relative number is off all the other lines show absolute line numbers instead of relative)

--- Tabs and indentation ---
opt.tabstop = 2 -- Two spaces for tabs (prettier default)
opt.shiftwidth = 2 -- Two spaces for indent width
opt.expandtab = true -- Expand tabs to spaces
opt.autoindent = true -- Copy indent from current line when starting new one (Automatically create tabs when creating new lines)
