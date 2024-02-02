return {
  {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "nvim-treesitter/nvim-treesitter-textobjects",
      "windwp/nvim-ts-autotag",
    },
    config = function()
      local treesitter = require("nvim-treesitter.configs")

      -- Configure treesitter
      treesitter.setup({
        -- Enable indentation
        -- indent = { enable = true },
        -- Enable autotagging (w/ nvim-ts-autotag plugin)
        autotag = {
          enable = true,
        },
        -- Ensure these language parsers are installed
        ensure_installed = {
          "json",
          "yaml",
          "markdown",
          "markdown_inline",
          "bash",
          "lua",
          "vimdoc",
          "vim",
          "regex",
          "dockerfile",
          "gitignore"
        },
        incremental_selection = {
          enable = true,
          keymaps = {
            init_selection = "<C-space>",
            node_incremental = "<C-space>",
            scope_incremental = false,
            node_decremental = "<bs>",
          },
        },
      })
    end,
  },
}
