syntax enable
set nocompatible
set noshowmode
set number
set relativenumber
set shiftwidth=2
set softtabstop=2
set tabstop=2
set smarttab
set expandtab
set autoindent
set smartindent
set smartcase


call plug#begin(stdpath('config') . 'plugged')
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'sheerun/vim-polyglot'
  Plug 'junegunn/vim-easy-align'
  "Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
  Plug 'jiangmiao/auto-pairs'
  Plug 'airblade/vim-gitgutter'
  Plug 'itchyny/lightline.vim'
  Plug 'p00f/nvim-ts-rainbow'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'scalameta/nvim-metals'
  Plug 'neovim/nvim-lspconfig'
  Plug 'sonph/onehalf'
  Plug 'folke/tokyonight.nvim'
  Plug 'dracula/vim'
  Plug 'joshdick/onedark.vim'
  Plug 'sickill/vim-monokai'
  Plug 'catppuccin/nvim'
  Plug 'EdenEast/nightfox.nvim'
  Plug 'whatyouhide/vim-gotham'
call plug#end()

colorscheme nightfox 

let g:mapleader=';'
let g:lightline = { 'colorscheme': 'nightfox' }

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

lua require('plugins')

