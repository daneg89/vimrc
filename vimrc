" --------------- Plugin Section --------------- 

" Vundle required settings
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" Have runpath also include ctrlp
set runtimepath^=~/.vim/bundle/ctrlp.vim

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo

" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
"

" plugin from http://vimawesome.com/plugin/youcompleteme
Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" --------------- End Plugin Section --------------- 


" --------------- Custom Section --------------- 

" My leader will be - for now since it's not used all that often
:let mapleader = "-"

" You Complete Me related. Avoid getting those annoying error messages in .c files
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'

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
" number to show curr line #, relativenumber to show lines relative to curr
" line
set number
set relativenumber
set ruler
set shiftwidth=2
set tabstop=2

" Wild menu
:set wildignore=*.swf,*.o,*.png,*.jpg,*.swz,*.swc

" .swp files will be redirected to these folders
:set dir=~/tmp,/var/tmp,.

" Custom abbreviations
:ab hrs hours
:ab hors hours
:ab teh the

colorscheme codeschool

" Custom highlighting
highlight CursorLine ctermbg=0x000000 cterm=bold

" Easy buffer switching
:nnoremap <C-right> <ESC>:bn<CR>
:nnoremap <C-left> <ESC>:bp<CR>

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
:nnoremap <C-j> <C-w>j<C-w>_
:nnoremap <C-k> <C-w>k<C-w>_
:nnoremap <C-l> <C-w>l

" Escape is so far away, let's avoid it
:inoremap jk <ESC>
:inoremap df <ESC>

" Modify and update vimrc
:nnoremap <leader>v :tabe ~/.vimrc<CR>
:nnoremap <leader>s :source ~/.vimrc<CR>

" Open up all opened buffers in tabs
:nnoremap <leader>t :tab ball<CR>

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

" Use relative numbering unless in insert mode or not using vim
:augroup LineNumbering
:   autocmd!
:   autocmd InsertEnter * :set number
:   autocmd InsertLeave * :set relativenumber
:augroup END

" Force syntax of .inc files to be Pascal
:augroup PascalGroup
:   autocmd!
:   autocmd FileType pov :set syntax=pascal
:augroup END

" Templates for when we creating new files
:augroup FileTemplates
:   autocmd!
:   autocmd BufNewFile *.rb 0r ~/.vim/file-templates/ruby.skel
:   autocmd BufNewFile *.c 0r ~/.vim/file-templates/c.skel
:augroup END

" Fix syntax highlighting for Markdown files
:augroup MarkdownGroup
:   autocmd!
:   autocmd BufNewFile,BufRead *.md :set filetype=markdown
:augroup END

" --------------- End Custom Section --------------- 
