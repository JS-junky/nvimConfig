call plug#begin('~/.config/nvim/plugged')

" Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs'
Plug 'hoob3rt/lualine.nvim'
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-commentary'
Plug 'tomasiser/vim-code-dark'
Plug 'tpope/vim-surround'
Plug 'szw/vim-maximizer'
Plug 'bluz71/vim-nightfly-guicolors'
Plug 'thiagoalessio/rainbow_levels.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-dadbod'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/nvim-treesitter-textobjects'
Plug 'rafamadriz/neon'
Plug 'christianchiarulli/nvcode-color-schemes.vim'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'tzachar/cmp-tabnine', { 'do': './install.sh' }
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
" Plug 'puremourning/vimspector'
Plug 'alvan/vim-closetag'
Plug 'KabbAmine/vCoolor.vim'
Plug 'JoosepAlviste/nvim-ts-context-commentstring'
Plug 'udalov/kotlin-vim'
Plug 'onsails/lspkind-nvim'
Plug 'AndrewRadev/tagalong.vim'
Plug 'sbdchd/neoformat'
Plug 'williamboman/nvim-lsp-installer'
Plug 'lukas-reineke/indent-blankline.nvim'
" Plug 'kdheepak/tabline.nvim'
Plug 'folke/tokyonight.nvim'
Plug 'xiyaowong/nvim-transparent'

call plug#end()