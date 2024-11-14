return {
  "nvim-treesitter/nvim-treesitter",
  event = "VeryLazy",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = {
        "lua",
        "vim",
        "vimdoc",
        "luadoc",
        "markdown",
        "json",
        "tsx",
        "rust",
        "ron",
        "ruby"
      },
      highlight = {
        enable = true,
        disable = { "help" }
      },
      indent = {
        enable = false
      },
      autotag = {
        enable = true
      }
    })
  end,
}
