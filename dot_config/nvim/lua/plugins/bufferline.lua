return {
  'akinsho/bufferline.nvim',
  event = { "BufEnter" },
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()
    require("bufferline").setup {
      highlights = require("catppuccin.groups.integrations.bufferline").get(),
      options = {
        numbers = "none",
        close_command = "bdelete! %d",
        right_mouse_command = nil,
        left_mouse_command = "buffer %d",
        middle_mouse_command = nil,
        max_name_length = 18,
        max_prefix_length = 15,
        tab_size = 12,
        diagnostics = false,
        indicator = {
          -- style = "underline",
        },
        view = "multiwindow",
        custom_filter = function(bufnr)
          -- if the result is false, this buffer will be shown, otherwise, this
          -- buffer will be hidden.

          -- filter out filetypes you don't want to see
          local exclude_ft = { "qf", "fugitive", "git" }
          local cur_ft = vim.bo[bufnr].filetype
          local should_filter = vim.tbl_contains(exclude_ft, cur_ft)

          if should_filter then
            return false
          end

          return true
        end,
        show_buffer_icons = true,
        show_buffer_close_icons = true,
        show_close_icon = true,
        show_tab_indicators = true,
        persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
        enforce_regular_tabs = false,
        always_show_bufferline = true,
        separator_style = "thin",
        sort_by = "id",
        themable = true,
      },
    }

    vim.keymap.set("n", "<space>bp", "<cmd>BufferLinePick<CR>", {
      desc = "pick a buffer",
    })
  end,
}
