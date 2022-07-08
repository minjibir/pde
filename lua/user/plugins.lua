local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'sheerun/vim-polyglot'
  use 'junegunn/vim-easy-align'
  use 'jiangmiao/auto-pairs'
  use 'airblade/vim-gitgutter'
  use 'itchyny/lightline.vim'
  use 'p00f/nvim-ts-rainbow'
  use 'scalameta/nvim-metals'
  use 'neovim/nvim-lspconfig'
  use 'sonph/onehalf'
  use 'folke/tokyonight.nvim'
  use 'dracula/vim'
  use 'joshdick/onedark.vim'
  use 'sickill/vim-monokai'
  use 'catppuccin/nvim'
  use 'edeneast/nightfox.nvim'
  use 'whatyouhide/vim-gotham'
  use 'kyazdani42/nvim-web-devicons'
  use 'kyazdani42/nvim-tree.lua'
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

  -- Use specific branch, dependency and run lua file after load
  -- use {
  --   'glepnir/galaxyline.nvim', branch = 'main', config = function() require'statusline' end,
  --   requires = {'kyazdani42/nvim-web-devicons'}
  -- }

    -- Plugins can have dependencies on other plugins
  use {
    'haorenW1025/completion-nvim',
    opt = true,
    requires = {{'hrsh7th/vim-vsnip', opt = true}, {'hrsh7th/vim-vsnip-integ', opt = true}}
  }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
