return {
  "nvimdev/dashboard-nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  event = "VimEnter",

  config = function()
    local dashboard = require("dashboard")
    dashboard.setup({
      theme = "doom",
      config = {
        header = {
          [[                                                       ]],
          [[ ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗]],
          [[ ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║]],
          [[ ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║]],
          [[ ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║]],
          [[ ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║]],
          [[ ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝]],
          [[                                                       ]],
          [[                                                       ]]
        },
        center = {
          -- Recently opened files
          {
            icon = " ",
            desc = "Recently opened files",
            key = "a",
            key_format = " [%s]",
            action = "Telescope oldfiles",
          },
          -- Find file
          {
            icon = " ",
            desc = "Find file",
            key = "b",
            key_format = " [%s]",
            action = "Telescope find_files"
          },
          -- File browser
          {
            icon = " ",
            desc = "File browser",
            key = "d",
            key_format = " [%s]",
            action = "NvimTreeToggle"
          }
        }
      }
    })
  end,
}
