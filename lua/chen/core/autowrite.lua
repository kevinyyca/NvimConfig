local bufnr = vim.fn.bufnr() -- Get the current buffer number
local filename = vim.fn.bufname(bufnr) -- Get the file name associated with the buffer

-- Check if the file is in the specified directory and has a Lua file extension
local file_dir = vim.fn.expand("%:p:h")
if file_dir:find(vim.fn.expand("~/.config/nvim/lua/chen/plugins"), 1, true) == 1 and vim.fn.expand("%:e") == "lua" then
  -- Check if the file is empty
  local content = vim.fn.filereadable(filename) == 1 and vim.fn.readfile(filename) or {}
  local is_empty = #content == 0 or (content[1] and content[1]:match("^%s*$"))

  if is_empty then
    vim.api.nvim_feedkeys("ireturn {\n\n}\x1bki\t", "n", true)
    -- vim.api.nvim_feedkeys("i", "n", true)
    -- vim.api.nvim_feedkeys("return {", "n", true)
    -- vim.api.nvim_feedkeys("\n\n", "n", true)
    -- vim.api.nvim_feedkeys("}", "n", true)
    -- vim.api.nvim_feedkeys("\x1b", "n", true)
    -- vim.api.nvim_feedkeys("k", "n", true)
    -- vim.api.nvim_feedkeys("i", "n", true)
    -- vim.api.nvim_feedkeys("\t", "n", true)
  end
end
