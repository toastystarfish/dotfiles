return {
  "rachartier/tiny-inline-diagnostic.nvim",
  event = "VeryLazy", -- Or `LspAttach`
  priority = 1000, -- needs to be loaded in first
  config = function()
      require('tiny-inline-diagnostic').setup({
        options = {
          use_icons_from_diagnostic = false,
          set_arrow_to_diag_color = true,
          multilines = {
            enabled = true
          }
        }
      })
      vim.diagnostic.config({ virtual_text = false })
  end
}
