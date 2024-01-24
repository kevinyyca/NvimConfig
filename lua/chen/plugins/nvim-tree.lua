return {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons"
  },
  config = function()
    local nvimtree = require("nvim-tree")

    -- Recommended settings from nvim tree documentation
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    -- Change the color for arrows in the tree to be light blue
    vim.cmd( [[ highlight NvimTreeIndentMarker guifg=#3FC5FF ]] )

    -- Configure nvim-tree
    nvimtree.setup({
      renderer = {
        icons = {
          glyphs = {
            folder = {
                arrow_closed = "", -- Arrow when folder is closed
                arrow_open = "", -- Arrow when folder is open)
            },
          },
        },
      },
      -- Disable window_picker for Nvim-tree to work well wit hsplit windows
      actions = {
        open_file = {
          window_picker = {
            enable = false,
          },
        },
      },
    })
  end,
}
