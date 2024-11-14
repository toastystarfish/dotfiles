return {
  {
    "rose-pine/neovim",
    name = "rose-pine",
    priority = 1000,
    lazy = false,
    config = function()
      require("rose-pine").setup({
        styles = {
          transparency = true,
        },
        palette = {
          main = {
            pine = "#429cbf",
          },
        },
      })
      -- vim.cmd.colorscheme("rose-pine")
    end,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    lazy = false,
    config = function()
      require("catppuccin").setup({
        flavour = "mocha",
        transparent_background = true,
      })
      -- vim.cmd.colorscheme("catppuccin")
    end,
  },
  {
    "Shatur/neovim-ayu",
    name = "ayu",
    priority = 1000,
    lazy = false,
    config = function()
      local colors = require('ayu.colors')
      colors.generate(true)

      require('ayu').setup({
        mirage = true,
        terminal = true,
        overrides = {
          Normal = { bg = "None" },
          -- ColorColumn = { bg = "None" },
          SignColumn = { bg = "None" },
          Folded = { bg = "None" },
          FoldColumn = { bg = "None" },
          CursorLine = { bg = "None" },
          CursorColumn = { bg = "None" },
          WhichKeyFloat = { bg = "None" },
          VertSplit = { bg = "None" },},
        }
      )
      vim.cmd.colorscheme("ayu")
    end,
  }
}
