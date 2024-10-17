local Plug = vim.fn['plug#']

-- Download plug if not installed
-- TODO


vim.call('plug#begin')

-- Lib for other plugins (Telescope)
Plug 'nvim-lua/plenary.nvim'
-- telescope sorter for performance
Plug('nvim-telescope/telescope-fzf-native.nvim', { ['do'] = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release' })
Plug('nvim-telescope/telescope.nvim', { tag = '0.1.8' })

Plug('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})

-- Managing LSP installations
Plug('williamboman/mason.nvim')
Plug('williamboman/mason-lspconfig.nvim')

-- Autocompletion
Plug('neovim/nvim-lspconfig')
Plug('hrsh7th/nvim-cmp')
Plug('hrsh7th/cmp-nvim-lsp')
Plug('hrsh7th/cmp-buffer')
Plug('VonHeikemen/lsp-zero.nvim', {['branch'] = 'v4.x'})

Plug('tpope/vim-fugitive')
Plug('joshdick/onedark.vim')
Plug('posva/vim-vue')
Plug('junegunn/fzf', { dir = '~/.fzf' })
-- Searching + Editing
Plug('dyng/ctrlsf.vim' )
-- Async Lint Engine
Plug('dense-analysis/ale')
-- JavaScript syntax highlighting
Plug('pangloss/vim-javascript')
Plug('itchyny/lightline.vim')
Plug('vim-airline/vim-airline')
Plug('scrooloose/nerdtree')
-- Easy sorrounding features
Plug('tpope/vim-surround')
-- Git specific status symbols
Plug('airblade/vim-gitgutter')
-- Closing bracket/brace/quote/etc
Plug('jiangmiao/auto-pairs')

-- Debug Adapter Protocol
Plug('mfussenegger/nvim-dap')
-- Golang debug support with delve directly
Plug('leoluz/nvim-dap-go')

Plug('Yggdroot/indentLine')

Plug('fatih/vim-go', { ['do'] = ':GoUpdateBinaries' })

-- Python
Plug('davidhalter/jedi-vim')

-- Requires neovim 0.5+
Plug('neovim/nvim-lspconfig')

-- Nice tab indentation visualization
Plug('godlygeek/tabular')

Plug('preservim/vim-markdown')

-- Clojure
Plug('Olical/conjure')
Plug('PaterJason/cmp-conjure')
Plug('guns/vim-sexp')

-- Rainbow paren
Plug('HiPhish/rainbow-delimiters.nvim')

Plug('ThePrimeagen/harpoon', { ['branch'] = "harpoon2" })

vim.call('plug#end')

