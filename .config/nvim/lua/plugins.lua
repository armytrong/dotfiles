local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()


return require('packer').startup(function(use)

-- Packer can manage itself
use 'wbthomason/packer.nvim'

-- lualine
use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
}

--completion
use 'neovim/nvim-lspconfig' --config for Nvim LSP
use 'hrsh7th/cmp-nvim-lsp'
use 'hrsh7th/cmp-buffer'
use 'hrsh7th/cmp-path'
use 'hrsh7th/cmp-cmdline'
use 'hrsh7th/nvim-cmp'

use 'hrsh7th/cmp-vsnip'
use 'hrsh7th/vim-vsnip'

--use 'williamboman/nvim-lsp-installer' -- lsp-installer


-- syntax highlighting
use 'jamespeapen/swayconfig.vim'


-- Automatically set up your configuration after cloning packer.nvim
if packer_bootstrap then
    require('packer').sync()
end

end)
