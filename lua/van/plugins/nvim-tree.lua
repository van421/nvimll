return {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons"
  },
  config = function()
    local nvimtree = require("nvim-tree")

    vim.g.loaded = 1
    vim.g.loaded_netrwPlugin = 1

    vim.cmd([[ highlight NvimTreeIndentMarker guifg=#3FC5FF ]])

    nvimtree.setup({
      sort_by = "case_sensitive",
      view = {
        width = 30,
      },
      renderer = {
        icons = {
          glyphs = {
            folder = {
              arrow_closed = "▶",
              arrow_open = "▼",
            },
          },
        },
        group_empty = true,
      },
      actions = {
        open_file = {
          window_picker = {
            enable = false,
          },
        },
      },
      filters = {
        dotfiles = true,
        custom = { ".DS_Store" },
      },
      git = {
        ignore = true,
      }
    })

    local keymap = vim.keymap
    keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
    -- keymap.set("n", "<leader>ef", ":NvimTreeFindFileToggle<CR>")
    -- keymap.set("n", "<leader>ec", ":NvimTreeCollapse<CR>")
    -- keymap.set("n", "<leader>er", ":NvimTreeRefresh<CR>")
    
  end
}
