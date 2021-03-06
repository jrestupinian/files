source $VIMRUNTIME/defaults.vim
set nocompatible		" required
filetype off			" required

" set the runtime path to include Vundle and initialize
" set rtp+=~/.vim/bundle/Vundle.vim
" call vundle#begin()

" Plugin 'gmarik/Vundle.vim'
" Plugin 'vim-scripts/indentpython.vim'
" Plugin 'jnurmine/Zenburn'
" Plugin 'altercation/vim-colors-solarized'
" Plugin 'scrooloose/nerdtree'
" Plugin 'jistr/vim-nerdtree-tabs'
" Plugin 'kien/ctrlp.vim'
" Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" call vundle#end()
" filetype plugin indent on

set splitbelow
set splitright

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-l> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"------------Start Python PEP 8 stuff----------------
" Number of spaces that a pre-existing tab is equal to.
" au BufRead,BufNewFile *py,*pyw,*.c,*.h set tabstop=4

"spaces for indents
" au BufRead,BufNewFile *.py,*pyw set shiftwidth=4
" au BufRead,BufNewFile *.py,*.pyw set expandtab
" au BufRead,BufNewFile *.py set softtabstop=4

" Use the below highlight group when displaying bad whitespace is desired.
" highlight BadWhitespace ctermbg=red guibg=red

" Display tabs at the beginning of a line in Python mode as bad.
" au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /^\t\+/
" Make trailing whitespace be flagged as bad.
" au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" Wrap text after a certain number of characters
" au BufRead,BufNewFile *.py,*.pyw, set textwidth=100

" Use UNIX (\n) line endings.
" au BufNewFile *.py,*.pyw,*.c,*.h set fileformat=unix

" Set the default file encoding to UTF-8:
set encoding=utf-8
set cursorline
set nu
set ruler
set autoindent
set nowrap
"set statusline=%<%f%h%m%r%=%b\ 0x%B\ \ %l,%c%V\ %P

set laststatus=2

"Status bar
set statusline=
set statusline+=%#DiffAdd#%{(mode()=='n')?'\ \ NORMAL\ ':''}
set statusline+=%#DiffChange#%{(mode()=='i')?'\ \ INSERT\ ':''}
set statusline+=%#DiffDelete#%{(mode()=='r')?'\ \ RPLACE\ ':''}
set statusline+=%#Cursor#%{(mode()=='v')?'\ \ VISUAL\ ':''}
set statusline+=\ %n\           " buffer number
set statusline+=%#Visual#       " colour
set statusline+=%{&paste?'\ PASTE\ ':''}
set statusline+=%{&spell?'\ SPELL\ ':''}
set statusline+=%#CursorIM#     " colour
set statusline+=%R                        " readonly flag
set statusline+=%M                        " modified [+] flag
set statusline+=%#Cursor#               " colour
set statusline+=%#CursorLine#     " colour
set statusline+=\ %t\                   " short file name
set statusline+=%=                          " right align
set statusline+=%#CursorLine#   " colour
set statusline+=\ %Y\                   " file type
set statusline+=%#CursorIM#     " colour
set statusline+=\ 0x%B\         " ASCII Character
set statusline+=\ %3l:%-2c\         " line + column
set statusline+=%#Cursor#       " colour
set statusline+=\ %3p%%\                " percentag
"/end of status bar



let python_highlight_all=1
syntax on

if has('gui_running')
	set background=dark
	colorscheme evening
else
	colorscheme elflord
endif

" call togglebg#map("<F5>")

" let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
