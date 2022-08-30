require('packer').startup(function()
	use "wbthomason/packer.nvim" -- Have packer manage itself
	use "nvim-treesitter/nvim-treesitter" 
	use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/nvim-cmp'
	use 'L3MON4D3/LuaSnip'
	use 'saadparwaiz1/cmp_luasnip'
	use 'epheien/termdbg'
	use 'm4xshen/autoclose.nvim'
	use 'morhetz/gruvbox'
	use 'rcarriga/nvim-notify'
	use {
	    'numToStr/Comment.nvim',
	    config = function()
		require('Comment').setup()
	    end
	}
end)




