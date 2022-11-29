--nvim-lua/plenary.nvimnvim-lua/plenary.nvimnvim-lua/plenary.nvimnvim-lua/plenary.nvimnvim-lua/plenary.nvimnvim-lua/plenary.nvimnvim-lua/plenary.nvim This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
--vim.cmd [[packadd packer.nvim]]

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


vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost packer.lua source <afile> | PackerSync
  augroup end
]])

local status, packer = pcall(require, "packer")
if not status then
    return
end


return packer.startup(function()
  use 'wbthomason/packer.nvim'
  use 'folke/tokyonight.nvim'
  use 'bluz71/vim-nightfly-guicolors'
  use 'BurntSushi/ripgrep'
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  
    -- treesitter
  use 'nvim-treesitter/nvim-treesitter'  --shitloads of errors :S
  use 'p00f/nvim-ts-rainbow'

  use 'christoomey/vim-tmux-navigator'
  use 'szw/vim-maximizer'
  use 'vim-scripts/ReplaceWithRegister'
  use 'akinsho/toggleterm.nvim'

  -- lualine 
  use 'nvim-lualine/lualine.nvim'
  use 'kyazdani42/nvim-web-devicons'

  -- nvim-tree
  use 'kyazdani42/nvim-tree.lua'
end)


