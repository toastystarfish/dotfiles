vim.opt.clipboard = "unnamedplus"                       -- clipboard for copy/paste
vim.opt.completeopt = {'menu', 'menuone', 'noselect'}
vim.opt.mouse = 'a'                                     -- allow using the mouse

-- Tab
vim.opt.tabstop = 2                                     -- number of spaces for tab
vim.opt.softtabstop = 2                                 -- number of spaces in tab when editing
vim.opt.shiftwidth = 2                                  -- insert spaces on tab
vim.opt.expandtab = true                                -- tabs are spaces

-- UI Config
vim.opt.number = true                                   --show line numbers on left
vim.opt.relativenumber = true                           -- show line number relative to current line
vim.opt.colorcolumn = "120"                             -- show vertical line at 120 character column

-- invisible characters
vim.opt.list = true
vim.opt.listchars = { tab = '|→', trail = ' ', space = '·' }

vim.opt.fileformat = 'unix'
vim.opt.fixeol = false

-- LSP
vim.opt.signcolumn = 'yes'

