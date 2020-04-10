" My leader will be - for now since it's not used all that often
:let mapleader = "-"

set background=dark
" Highlight the current line the cursor is on 
set cursorline
" Tabs will become spaces
set expandtab
set hlsearch
set ignorecase
set incsearch
" Macros will be faster if they don't have to draw everything
set lazyredraw
set nobackup
" number to show curr line #, relativenumber to show lines relative to curr line
set number
set ruler
set shiftwidth=2
set tabstop=2
set termguicolors

" Focus on middle of the screen when scrolling
set scrolljump=-50

" don't give |ins-completion-menu| messages.
set shortmess+=c

" Always show sign col
set signcolumn=yes

" Ignore build/repo things
set wildignore+=**/node_modules/**
set wildignore+=**/.git/**
set wildignore+=**/build/**
set wildignore+=**/dist/**

" .swp files will be redirected to these folders
:set dir=~/tmp,/var/tmp,.

:set foldmethod=syntax

" Easy buffer switching
:nnoremap <C-right> :bn<CR>
:nnoremap <C-left> :bp<CR>

" Move lines up and down easily and indent them
:nnoremap <C-up> ddkP==
:nnoremap <C-down> ddp==

:vnoremap <C-up> :m '<-2<CR>gv=gv
:vnoremap <C-down> :m '>+1<CR>gv=gv

" Add newline above/under current line
:nnoremap <leader>O O<ESC>
:nnoremap <leader>o o<ESC>

" Move between windows more simply. Moving between horizontally split windows
" will cause the current window to be maximized.
:nnoremap <C-h> <C-w>h
:nnoremap <C-j> <C-w>j
:nnoremap <C-k> <C-w>k
:nnoremap <C-l> <C-w>l

" Escape is so far away, let's avoid it
:inoremap jk <ESC>
:inoremap df <ESC>

" Modify and update vimrc
:nnoremap <leader>. :source ~/.vimrc<CR>

" Easy tab
:nnoremap <leader>t :tabnew<CR>

" Easy Splits
:nnoremap <leader>s :sp<CR>
:nnoremap <leader>v :vs<CR>

" Close current buffer
:nnoremap <leader>q :q<CR>

" Delete current buffer
:nnoremap <leader>c :bd<CR>

" Make up and down keys act as expected
:nnoremap j gj
:nnoremap k gk

" Go to the first/last character of the line
:nnoremap <leader>0 g^
:nnoremap <leader>$ g$

" Templates for when we creating new files
:augroup FileTemplates
:   autocmd!
:   autocmd BufNewFile *.vue 0r ~/.vim/file-templates/vue-template.vue
:augroup END


" --------------- Begin Plugin Section --------------- 

" Neovim specific config
if has('nvim')
  " Config directory setup and loading if there is anything
  if !isdirectory($HOME."/.config/nvim/config")
    call mkdir($HOME."/.config/nvim/config", "p")
  else
    for f in split(glob('~/.config/nvim/config/*.vim'), '\n')
      exe 'source' f
    endfor
  endif

  " Escape terminal
  :tnoremap <Esc> <C-\><C-n>
  " Allow paste of registers
  :tnoremap <expr> <C-R> '<C-\><C-N>"'.nr2char(getchar()).'pi'
endif

" Download and install Plug if not already available
if has('nvim')
	if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
		silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
					\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
		autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
	endif

else
	if empty(glob('~/.vim/autoload/plug.vim'))
		silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
					\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
		autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
	endif
endif


call plug#begin()

Plug 'joshdick/onedark.vim'
Plug 'posva/vim-vue'
" Failing randomly : ( Plug 'shmargum/vim-sass-colors'
Plug 'junegunn/fzf', { 'dir': '~/.fzf' }
" Searching + Editing
Plug 'dyng/ctrlsf.vim' 
" Conquer of Completion, intellisense engine
Plug 'neoclide/coc.nvim', {'branch': 'release'} 
" Async Lint Engine
Plug 'dense-analysis/ale'
" JavaScript syntax highlighting
Plug 'pangloss/vim-javascript'
Plug 'itchyny/lightline.vim'
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdtree'

call plug#end()

syntax on
colorscheme onedark
