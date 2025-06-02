vim.cmd("set expandtab")
vim.cmd("set shiftwidth=4 smarttab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=0")
vim.cmd("set relativenumber")
vim.cmd("set colorcolumn=80")
vim.cmd("set cursorline")
vim.cmd("set nowrap")
vim.g.mapleader = ","

vim.opt.swapfile = false

-- Navigate vim panes better
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
vim.wo.number = true
