" Colemak remap:
"
" noremap d g
" noremap e k
" noremap f e
" noremap g t
" noremap i l
" noremap j y
" noremap k n
" noremap l u
" noremap n j
" noremap o p
" noremap p r
" noremap r s
" noremap s d
" noremap t f
" noremap u i
" noremap y o
" noremap D G
" noremap E K
" noremap F E
" noremap G T
" noremap I L
" noremap J Y
" noremap K N
" noremap L U
" noremap N J
" noremap O P
" noremap P R
" noremap R S
" noremap S D
" noremap T F
" noremap U I
" noremap Y O
set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

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
au BufNewFile,BufRead *.py set tabstop=4
au BufNewFile,BufRead *.py set softtabstop=4
au BufNewFile,BufRead *.py set shiftwidth=4
au BufNewFile,BufRead *.py set textwidth=79
au BufNewFile,BufRead *.py set expandtab
au BufNewFile,BufRead *.py set autoindent
au BufNewFile,BufRead *.py set fileformat=unix


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

" Plugins
Plugin 'tmhedberg/SimpylFold'
" Include docstrings with fold
let g:SimpylFold_docstring_preview=1
Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'jnurmine/Zenburn'
Plugin 'arcticicestudio/nord-vim'
Plugin 'scrooloose/nerdtree'
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'davidhalter/jedi-vim'
Plugin 'catppuccin/vim', { 'as': 'catppuccin' }
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
let g:pymode_syntax_all = 1
let g:pymode_rope = 1
let g:pymode_rope_completion = 1
" Use the Python formatters from the current virtual environment
let g:pymode_lint_on_fly=0 
let g:pymode_lint_checkers = ['pylint', 'pre-commit', 'flake8', 'black', 'radon', 'flake8-docstrings', 'Flake8-pyproject']
let g:pymode_options_max_line_length = 119
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


" Automatically format on save
" augroup fmt
"   autocmd!
"   autocmd BufWritePre *.py Autoformat
" augroup END


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

"NERDTree Hidden Files
let NERDTreeShowHidden=1
"NERDTree auto-open
"au VimEnter *  NERDTree
