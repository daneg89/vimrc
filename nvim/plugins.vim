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
" Results go to quickfix so we can use cnext
let g:ctrlsf_populate_qflist = 1

" Conquer of Completion, intellisense engine

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
" inoremap <silent><expr> <TAB>
"       \ pumvisible() ? "\<C-n>" :
"       \ <SID>check_back_space() ? "\<TAB>" :
"       \ coc#refresh()
" inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

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

let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'

" Lightline theme
let g:lightline = {
  \ 'colorscheme': 'onedark',
  \ }

" Airline theme
let g:airline_theme='onedark'

" Deoplete settings
let g:deoplete#enable_at_startup = 1

" neosnippet settings
" imap <C-k> <Plug>(neosnippet_expand_or_jump)
" smap <C-k> <Plug>(neosnippet_expand_or_jump)
"xmap <C-k> <Plug>(neosnippet_expand_target)

" inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
" \ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" Ultisnips settings

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-k>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"

" NERDTree
:nnoremap <leader>e :NERDTreeToggle<CR>

let g:indentLine_char_list = ['|', '¦', '┆', '┊']
