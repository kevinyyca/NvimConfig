return {
  "folke/noice.nvim",
  keys = ":",
  dependencies = {
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify"
  },
  config = function()
    local noice = require("noice")
    vim.cmd([[Lazy load nvim-lspconfig]])

    noice.setup() -- Configure Noice

    -- Keymaps
    local keymap = vim.keymap

    keymap.set("n", "<leader>nd", ":NoiceDismiss<CR>", { desc = "Dismiss Noice message"} ) -- Dismiss Noice message
  end
}
