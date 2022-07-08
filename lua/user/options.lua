
local o = vim.opt
-- syntax enable = true
-- o.nocompatible = true
-- o.noshowmode = true
o.number = true
o.relativenumber = true
o.shiftwidth=2
o.softtabstop=2
o.tabstop=2
o.smarttab = true
o.expandtab = true
o.autoindent = true
o.smartindent = true
o.smartcase = true
o.wrap = false
o.expandtab = false
o.cursorline = true

vim.cmd "colorscheme nightfox" 

vim.cmd "let g:mapleader=';'"
vim.cmd "let g:lightline = { 'colorscheme': 'nightfox' }"

vim.cmd "nnoremap <leader>ff <cmd>Telescope find_files<cr>"
vim.cmd "nnoremap <leader>fg <cmd>Telescope live_grep<cr>"
vim.cmd "nnoremap <leader>fb <cmd>Telescope buffers<cr>"
vim.cmd "nnoremap <leader>fh <cmd>Telescope help_tags<cr>"

