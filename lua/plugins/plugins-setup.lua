-- install packer auto
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

-- save this file to automatic update installation software
-- be care of PackerCompile change to PackerSync
-- plugins.lua change to plugins-setup.lua to fit local file name
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'folke/tokyonight.nvim'
  use "EdenEast/nightfox.nvim" -- theme

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }
  use {
    'nvim-tree/nvim-tree.lua', --Document tree
    'nvim-tree/nvim-web-devicons', -- Document tree icon
  }
  use("christoomey/vim-tmux-navigator") -- use ctrl+hjkl to locate window
  use "nvim-treesitter/nvim-treesitter" -- syntax on
  use "p00f/nvim-ts-rainbow" -- adjust treesitter, distinguish between different bracket colors
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim", -- equal to mason.nvim
    "neovim/nvim-lspconfig"
  }
  -- Auto-Complete
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-nvim-lsp"
  use "L3MON4D3/LuaSnip" -- snippets engine
  use "saadparwaiz1/cmp_luasnip"
  use "rafamadriz/friendly-snippets"
  use "hrsh7th/cmp-path" -- file path

  use "numToStr/Comment.nvim" --gcc and gc annotation
  use "windwp/nvim-autopairs" --Automatic completion of bracket

  use "akinsho/bufferline.nvim" -- buffer line split
  use "lewis6991/gitsigns.nvim" -- git prompt left 
  use "liuchengxu/vista.vim" -- class/func list

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.4',  -- file searcher
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  if packer_bootstrap then
    require('packer').sync()
  end
end)
