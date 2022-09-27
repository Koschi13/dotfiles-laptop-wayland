call plug#begin('~/.local/share/nvim/plugged')

" LSP
Plug 'neovim/nvim-lspconfig'                                        " language server
Plug 'hrsh7th/nvim-compe'                                           " autocomplete
Plug 'prabirshrestha/vim-lsp'                                       " vim / nvim language server
Plug 'ray-x/lsp_signature.nvim'                                     " Show method signature when typing
Plug 'folke/todo-comments.nvim'                                     " TODO strings
Plug 'folke/lsp-trouble.nvim'                                       " Show lsp erros inline

" TS LSP
Plug 'jose-elias-alvarez/nvim-lsp-ts-utils'

" Tab completion ignore
Plug 'tzachar/compe-tabnine', { 'do': './install.sh' }

" Themes
Plug 'chriskempson/base16-vim'
Plug 'nvim-treesitter/nvim-treesitter'

" Galaxyline
Plug 'glepnir/galaxyline.nvim' , { 'branch': 'main' }

" shotcut completion
Plug 'folke/which-key.nvim'

" Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'branch': 'master' }
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'nvim-telescope/telescope-fzy-native.nvim', { 'do': 'make' }
Plug 'nvim-telescope/telescope-project.nvim'
Plug 'nvim-telescope/telescope-smart-history.nvim'
Plug 'tami5/sqlite.lua'

" nvim tree
Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'

" surround struff
Plug 'tpope/vim-surround'

" fancy startup screen
Plug 'mhinz/vim-startify'

" Tabline
Plug 'romgrk/barbar.nvim'

" Git
Plug 'rhysd/git-messenger.vim'
Plug 'nvim-lua/plenary.nvim'

" Gitsigns - inline git annotations, like modified lines
Plug 'lewis6991/gitsigns.nvim'

" Change directory when opening a file
Plug 'airblade/vim-rooter'

" Floating terminal
Plug 'voldikss/vim-floaterm'

" NIX support
Plug 'LnL7/vim-nix'

" Nim support
Plug 'alaviss/nim.nvim'

call plug#end()
