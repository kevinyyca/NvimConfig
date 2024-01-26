return {
  "nvimdev/dashboard-nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
    "nvim-telescope/telescope.nvim"
  },
  event = "VimEnter",

  config = function()
    local dashboard = require("dashboard")
    dashboard.setup()
  end,
}
