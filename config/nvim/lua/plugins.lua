vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use 'lewis6991/impatient.nvim'
    use 'ap/vim-css-color'
    use 'neovim/nvim-lspconfig'
    use 'jose-elias-alvarez/null-ls.nvim'
    use 'alvan/vim-closetag'
    use 'tpope/vim-eunuch'
    use 'wakatime/vim-wakatime'
    use 'tpope/vim-surround'
    use 'jiangmiao/auto-pairs'
    use 'tpope/vim-commentary'
    use 'nvim-lua/plenary.nvim'
    use 'kyazdani42/nvim-web-devicons'
    use 'kevinhwang91/rnvimr'
    use 'lewis6991/gitsigns.nvim'
    use 'ray-x/lsp_signature.nvim'
    use 'nvim-treesitter/nvim-treesitter'
    use 'navarasu/onedark.nvim'
    use 'nvim-tree/nvim-tree.lua'
    use 'towolf/vim-helm'
    use 'github/copilot.vim'
    use 'CopilotC-Nvim/CopilotChat.nvim'
    use {
        'nvim-telescope/telescope.nvim',
        requires = { 
            {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
        },
    }
    use {
        'hrsh7th/nvim-cmp',
        requires = {
            'hrsh7th/vim-vsnip',
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-cmdline'
        }
    }
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 
            {'akinsho/bufferline.nvim', tags = '2.*'},
            {'arkav/lualine-lsp-progress'}
        }
    }
end)
