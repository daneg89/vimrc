" My leader will be - for now since it's not used all that often
:let mapleader = "-"
:let maplocalleader = "_"

" Don't hide characters used for syntax highlighting (looking at you markdown)
set conceallevel=0
set foldmethod=syntax
" Don't automatically fold everything on opening a file
set foldlevel=99

set background=dark
" Highlight the current line the cursor is on 
set cursorline
" Tabs will become spaces
set expandtab
" buffers that have been edited can be hidden away
set hidden
set hlsearch
set ignorecase
set incsearch
" Macros will be faster if they don't have to draw everything
set lazyredraw
set nobackup
" number to show curr line #, relativenumber to show lines relative to curr line
set number
set relativenumber
set ruler

set nowrap

" This will always keep the cursor in the middle, even when moving up/down
" with anything. Trying this out for now to see if it feels better, but
" might be cool to see how keeping things in focus feels.
" Note that this kind of bricks the shift+H and shift+L motions
" so probably will have to lean on relative number a bit more when
" jumping to things.
set scrolloff=999

set shiftwidth=2
set tabstop=2
set termguicolors

" scroll with mouse in normal mode
set mouse=n

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

" Easy buffer switching
:nnoremap <C-right> :bn<CR>
:nnoremap <C-left> :bp<CR>

" Move lines up and down easily and indent them
:nnoremap <C-up> ddkP==
:nnoremap <C-down> ddp==

" Add newline above/under current line
:nnoremap <leader>O O<ESC>
:nnoremap <leader>o o<ESC>

" Move between windows more simply
:nnoremap <C-h> <C-w>h
:nnoremap <C-l> <C-w>l

:nnoremap <C-j> :cnext<CR>
:nnoremap <C-k> :cprev<CR>

:nnoremap <leader>j :lnext<CR>
:nnoremap <leader>k :lprev<CR>

" Thanks Primeagen
:vnoremap <leader>y "+y
:nnoremap J mzJ`z

" Escape is so far away, let's avoid it
:inoremap jk <ESC>

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

" Move visual block
:vnoremap J :m '>+1<CR>gv=gv
:vnoremap K :m '<-2<CR>gv=gv

cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Qa! qa!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qa qa
cnoreabbrev Qall qall

au BufNewFile,BufReadPost *.md set conceallevel=0

syntax on
" colorscheme onedark
" Remove bg to let term choose
hi Normal guibg=NONE ctermbg=NONE

" Define some custom highlighting to help with combing through logs and other files
" Needs to be called after colorscheme as the current one clears all highlighting
:highlight Angry ctermbg=red ctermfg=white guibg=red guifg=white
:highlight Danger ctermbg=lightyellow ctermfg=black guibg=lightyellow guifg=black
:highlight Nice ctermbg=green ctermfg=white guibg=green guifg=white

:nnoremap <leader>h :call matchadd("Angry\|Danger\|Nice", "")
:nnoremap <leader>l :call clearmatches()<CR>

:tnoremap <Esc> <C-\><C-n>
" Allow paste of registers
:tnoremap <expr> <C-R> '<C-\><C-N>"'.nr2char(getchar()).'pi'
