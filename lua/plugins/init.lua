return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'nvim-tree/nvim-web-devicons'
  use { "catppuccin/nvim", as = "catppuccin" }
  use 'andweeb/presence.nvim'
  use {'nvim-treesitter/nvim-treesitter', run = ":TSUpdate"}
  use {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use {'akinsho/bufferline.nvim', requires = 'nvim-tree/nvim-web-devicons'}
  use {
  'nvim-tree/nvim-tree.lua',
  requires = {
    'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
  }
  use {'windwp/nvim-ts-autotag'}
  use {'p00f/nvim-ts-rainbow'}
  use {'windwp/nvim-autopairs'}
  use {'folke/which-key.nvim'}
  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.0',
  requires = { {'nvim-lua/plenary.nvim'} }
}
  use 'glepnir/dashboard-nvim'
end)
