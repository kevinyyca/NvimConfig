return {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons"
  },
  keys = {
    "<leader>ee",
    "<leader>ef",
    "<leader>ec",
    "<leader>er"
  },
  config = function()
    local nvimtree = require("nvim-tree")

    -- Recommended settings from nvim tree documentation
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

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

    -- Change colors
    vim.cmd( [[ highlight NvimTreeIndentMarker guifg=#3FC5FF ]] ) -- Change the color of arrows in the tree to light blue
    vim.cmd( [[ highlight NvimTreeNormal guibg=#16161e00 ]] ) -- Make the background of the tree transparent

    -- Change the width of the tree
    vim.cmd( [[ NvimTreeResize 32 ]] )
    
    -- Set keymaps
    local keymap = vim.keymap

    keymap.set("n", "<leader>ee", ":NvimTreeToggle<CR>", { desc = "Toggle file explorer" }) -- Toggle file explorer
    keymap.set("n", "<leader>ef", ":NvimTreeFindFileToggle<CR>", { desc = "Toggle file explorer on current file" }) -- Toggle file explorer on current file
    keymap.set("n", "<leader>ec", ":NvimTreeCollapse<CR>", { desc = "Collapse file explorer" }) -- Collapse file explorer
    keymap.set("n", "<leader>er", ":NvimTreeRefresh<CR>", { desc = "Refresh file explorer" }) -- Refresh file explorer
  end,
}
