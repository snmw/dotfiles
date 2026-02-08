"""""""""""""
"" Airline ""
"""""""""""""
let g:airline#extensions#ale#enabled = 1    " ALE integration

    " Buffer list
let g:airline#extensions#tabline#enabled = 1

    " Filename
" let g:airline#extensions#tabline#formatter = 'default'              " f/p/file-name.js
" let g:airline#extensions#tabline#formatter = 'jsformatter'          " path-to/f
" let g:airline#extensions#tabline#formatter = 'unique_tail'          " file-name.js
let g:airline#extensions#tabline#formatter = 'unique_tail_improved' " f/p/file-name.js

    " Theme
let g:airline_theme='dracula'

    " Fonts
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" Powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.colnr = ' :'
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ' :'
let g:airline_symbols.maxlinenr = '☰ '
let g:airline_symbols.dirty='⚡'


"""""""""
"" ALE ""
"""""""""
" Uncomment bottom three lines to save CPU time
let g:ale_lint_on_save = 1
" let g:ale_lint_on_text_changed = 'never'
" let g:ale_lint_on_insert_leave = 0
" let g:ale_lint_on_enter = 0

let g:ale_fix_on_save = 1       " Autoformat on save
let g:ale_linters_explicit = 1  " Only lint when tool is specified

let g:ale_disable_lsp = 1       " Let COC handle language servering

" Navigate between errors with CTRL-J / CTRL-K
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

" Define linters
let g:ale_linters = {
  \ 'bash': ['shellcheck'],
  \ 'python': ['flake8', 'pylint', 'mypy'],
\}

" Fixers for autoformatting
let g:ale_fixers = {
  \ '*': ['remove_trailing_lines', 'trim_whitespace'],
  \ 'python': ['black'],
\}


"""""""""
"" COC ""
"""""""""
" Editor config:
" :CocInstall coc-tabnine coc-pyright

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1] =~# '\s'
endfunction


""""""""""""""""
"" IndentLine ""
""""""""""""""""
let g:indentLine_color_gui = '#44475a'
let g:indentLine_setConceal = 0
let g:indentLine_char = '¦'
