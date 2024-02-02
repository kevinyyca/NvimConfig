return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim" },
    "nvim-tree/nvim-web-devicons",
  },
  keys = {
    "<leader>ff",
    "<leader>fr",
    "<leader>fs",
    "<leader>fc",
    "<leader>fn"
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")

    telescope.setup({
      defaults = {
        path_display = { "truncate " },
        mappings = {
          i = {
            ["<C-k>"] = actions.move_selection_previous, -- Move to prev result
            ["<C-j>"] = actions.move_selection_next,     -- Move to next result
            ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
          },
        },
      },
    })

    -- Load extensions
    telescope.load_extension("fzf")
    telescope.load_extension("noice")

    -- Keymaps
    local keymap = vim.keymap

    keymap.set("n", "<leader>ff", ":Telescope find_files<CR>", { desc = "Fuzzy find files in cwd" })          -- Fuzzy find files in cwd
    keymap.set("n", "<leader>fr", ":Telescope oldfiles<CR>", { desc = "Fuzzy find recent files" })            -- Fuzzy find recent files
    keymap.set("n", "<leader>fs", ":Telescope live_grep<CR>", { desc = "Find string in cwd" })                -- Find string in cwd (Requires system package: Ripgrep)
    keymap.set("n", "<leader>fc", ":Telescope grep_string<CR>", { desc = "Find string under cursor in cwd" }) -- Find string under cursor in cwd (Requires system package: Ripgrep)
    keymap.set("n", "<leader>fn", ":Telescope noice<CR>", { desc = "Fuzzy find in Noice message history" })   -- Fuzzy find in Noice message history

    -- Change colors
    vim.cmd([[highlight TelescopeNormal guibg=#16161e00]]) -- Make the background of Telescope transparent
    vim.cmd([[highlight TelescopeBorder guibg=#16161e00]]) -- Make the background of Telescope borders transparent
  end,
}
