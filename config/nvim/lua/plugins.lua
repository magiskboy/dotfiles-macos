vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    
    -- syntax
    use 'nvim-treesitter/nvim-treesitter'
    use 'ap/vim-css-color'
    use 'towolf/vim-helm'
    use 'hashivim/vim-terraform'

    -- theme
    use 'navarasu/onedark.nvim'

    -- lsp
    use 'neovim/nvim-lspconfig'
    use 'ray-x/lsp_signature.nvim'

    -- AI
    -- use 'Exafunction/codeium.vim'
    use 'github/copilot.vim'

    -- code tools
    use 'alvan/vim-closetag'
    use 'tpope/vim-surround'
    use 'windwp/nvim-autopairs'
    use 'lewis6991/gitsigns.nvim'
    use 'tpope/vim-commentary'
    use 'tpope/vim-eunuch'
    use 'junegunn/fzf'
    use 'junegunn/fzf.vim'

    -- UI enhancement
    use 'kyazdani42/nvim-web-devicons'
    use 'nvim-tree/nvim-tree.lua'
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

    -- others
    use 'nvim-lua/plenary.nvim'
    use 'xiyaowong/transparent.nvim'
end)

