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
Plug('iamcco/markdown-preview.nvim', { ['do'] = 'cd app && yarn install'  })

Plug('fatih/vim-go', { ['do'] = ':GoUpdateBinaries' })

-- CSV helper
Plug('chrisbra/csv.vim')

-- Python
Plug('davidhalter/jedi-vim')
Plug('deoplete-plugins/deoplete-jedi')

Plug('Shougo/deoplete.nvim', { ['do'] = ':UpdateRemotePlugins' })

-- Track the engine.
Plug('SirVer/ultisnips')

-- Snippets are separated from the engine. Add this if you want them:
Plug('honza/vim-snippets')

-- Requires neovim 0.5+
Plug('neovim/nvim-lspconfig')

Plug('godlygeek/tabular')
Plug('preservim/vim-markdown')

-- Clojure
Plug('Olical/conjure')
Plug('guns/vim-sexp')
-- Rainbow paren
Plug('luochen1990/rainbow')


vim.call('plug#end')

