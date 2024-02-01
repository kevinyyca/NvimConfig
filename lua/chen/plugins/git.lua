return {
  {
    "tpope/vim-fugitive"
  },
  {
  "lewis6991/gitsigns.nvim",
  config = function()
    local gitsigns = require("gitsigns")
    gitsigns.setup()

    -- Keymaps
    local keymap = vim.keymap

    keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", { desc = "Preview Gitsigns hunk" })                  -- Preview Gitsigns hunk
    keymap.set("n", "<leader>gb", ":Gitsigns toggle_current_line_blame<CR>", { desc = "Toggle current line blame" }) -- Toggle current line blame
  end
  }
}
