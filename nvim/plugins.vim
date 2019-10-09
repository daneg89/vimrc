" FZF
:nnoremap <C-p> :FZF<CR>

" Use FZF with current buffers
:nnoremap <leader>b :call fzf#run({'source': map(filter(range(1, bufnr('$')), 'buflisted(v:val)'),
\               'bufname(v:val)'),
\ 'sink': 'e', 'down': '30%'})
\<CR>

" CtrlSF
:nnoremap <leader>f :CtrlSF<space>
:vmap <S-f> <Plug>CtrlSFVwordPath
let g:ctrlsf_ackprg='rg'
" Just go to the window to browse search results
let g:ctrlsf_auto_focus = {
\ "at": "start"
\ }

" Conquer of Completion, intellisense engine

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Async Linter Engine
let g:ale_linters = {
\   'javascript': ['eslint'],
\}

let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['eslint'],
\}

" Lightline theme
let g:lightline = {
  \ 'colorscheme': 'onedark',
  \ }

" Airline theme
let g:airline_theme='onedark'

" NERDTree
:nnoremap <leader>e :NERDTreeToggle<CR>
