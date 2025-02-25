-- plugins/telescope.lua:
return {
  'nvim-telescope/telescope.nvim', tag = '0.1.8',
  -- or                              , branch = '0.1.x',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local telescope = require("telescope.builtin")

    vim.keymap.set('n', '<leader>ff', telescope.find_files, { desc = 'Telescope find files' })
    vim.keymap.set('n', '<leader>fg', telescope.live_grep, { desc = 'Telescope live grep' })
    vim.keymap.set('n', '<leader>fb', telescope.buffers, { desc = 'Telescope buffers' })
    vim.keymap.set('n', '<leader>fh', telescope.help_tags, { desc = 'Telescope help tags' })

    require('telescope').setup({
      defaults = {
        file_ignore_patterns = { 'node_modules', 'target', 'vendor/bundle', 'build' },
      },
    })
  end
}
