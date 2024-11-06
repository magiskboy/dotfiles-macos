return {
    -- Syntax plugins
    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate',
    },
    'ap/vim-css-color',
    'towolf/vim-helm',
    'hashivim/vim-terraform',

    -- Theme
    'navarasu/onedark.nvim',

    -- LSP and signature
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'neovim/nvim-lspconfig',
    'ray-x/lsp_signature.nvim',

    -- AI
    'Exafunction/codeium.vim',

    -- Code tools
    'alvan/vim-closetag',
    'tpope/vim-surround',
    'windwp/nvim-autopairs',
    'lewis6991/gitsigns.nvim',
    'tpope/vim-commentary',
    'tpope/vim-eunuch',
    {
        'nvim-telescope/telescope.nvim',
        version = '^0.1.8',
        dependencies = {
            {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
        },
    },
    'sindrets/diffview.nvim',
    'akinsho/toggleterm.nvim',

    -- UI enhancements
    'rcarriga/nvim-notify',
    'kyazdani42/nvim-web-devicons',
    {
        'nvim-tree/nvim-tree.lua',
        cmd = 'NvimTreeToggle',
    },
    {
        'hrsh7th/nvim-cmp',
        dependencies = {
            'hrsh7th/vim-vsnip',
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-cmdline',
        }
    },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = {
            'akinsho/bufferline.nvim',
            'arkav/lualine-lsp-progress',
        }
    },

    -- Other utilities
    'xiyaowong/transparent.nvim',
    'nvim-lua/plenary.nvim',
}

