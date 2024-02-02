return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
  },
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local mason = require("mason")                     -- Import Mason
    local mason_lspconfig = require("mason-lspconfig") -- Import Mason-lspconfig

    -- Enable Mason and configure icons
    mason.setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗"
        }
      }
    })

    mason_lspconfig.setup({
      -- List of servers for mason to install
      ensure_installed = {
        "pylsp",
        "lua_ls",
        "marksman"
      },

      -- Auto-install confiured servers (with lspconfig)
      automatic_installation = true, -- Not the same as ensure_installed
    })

    -- Keymaps
    local Keymap = vim.keymap

    Keymap.set("n", "<leader>um", ":Mason<CR>", { desc = "Open Mason UI" })
  end,
}
