call plug#begin()
" List your plugins here
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'
call plug#end()

" Set split areas
set splitbelow
set splitright

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

" PEP-8 
" au BufNewFile,BufRead *.py set tabstop=4
" au BufNewFile,BufRead *.py set softtabstop=4
" au BufNewFile,BufRead *.py set shiftwidth=4
" au BufNewFile,BufRead *.py set textwidth=79
" au BufNewFile,BufRead *.py set expandtab
" au BufNewFile,BufRead *.py set autoindent
" au BufNewFile,BufRead *.py set fileformat=unix

set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=79
set expandtab
set autoindent
set fileformat=unix

" pretty highlighting
let python_highlight_all=1
syntax on


"hybrid line numbers
set nu rnu

" system clipboard
set clipboard=unnamed

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
augroup END

setlocal textwidth=119

" Airline Customizations
" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.colnr = ' ㏇:'
let g:airline_symbols.colnr = ' ℅:'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.linenr = ' ␊:'
let g:airline_symbols.linenr = ' ␤:'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.maxlinenr = '㏑'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = 'Ɇ'
let g:airline_symbols.notexists = '∄'
let g:airline_symbols.whitespace = 'Ξ'

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.colnr = ' ℅:'
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ' :'
let g:airline_symbols.maxlinenr = '☰ '
let g:airline_symbols.dirty='⚡'


" TMUX FIXES
" fix paste indentation
if &term =~ "screen"                                                   
  let &t_BE = "\e[?2004h"                                              
  let &t_BD = "\e[?2004l"                                              
  exec "set t_PS=\e[200~"                                              
  exec "set t_PE=\e[201~"                                              
endif

" YAML indentation
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType yml setlocal ts=2 sts=2 sw=2 expandtab

" Standard indentation:
set softtabstop=4              " see :h 'softtabstop'
set shiftwidth=4               " see :h 'shiftwidth'


" Built-in file directory viewer options (netrw)
let g:netrw_banner = 0
let g:netrw_liststyle = 3

" Clipboard
set clipboard=unnamedplus
