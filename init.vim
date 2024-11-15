" Instructions
" you need to install vim-plug
" https://github.com/junegunn/vim-plug?tab=readme-ov-file
" and then run :PlugInstall

" Initialize plugin manager
call plug#begin('~/.local/share/nvim/plugged')

" Python syntax highlighting and indentation
Plug 'vim-python/python-syntax'
Plug 'Vimjas/vim-python-pep8-indent'

" Elixir syntax highlighting and indentation
Plug 'elixir-editors/vim-elixir'

" Asynchronous Lint Engine (ALE) for linting and language server support
Plug 'dense-analysis/ale'

" File Explorer
Plug 'preservim/nerdtree'

" Status Line
Plug 'vim-airline/vim-airline'

call plug#end()

" Basic settings
set number
set relativenumber
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
set colorcolumn=80
set nowrap

" Enable true color support
if has('termguicolors')
  set termguicolors
endif

" Set colorscheme (optional)
colorscheme morning

" ALE configuration
let g:ale_linters = {
\   'python': ['flake8'],
\   'elixir': ['credo'],
\}

let g:ale_fixers = {
\   'python': ['black'],
\}

let g:ale_python_flake8_executable = 'flake8'
let g:ale_python_black_executable = 'black'

" Enable ALE linting and fixing
let g:ale_fix_on_save = 1

" Set directory for backup files
set backupdir=~/.config/nvim/backup//

" Set directory for swap files
set directory=~/.config/nvim/swap//

" Set directory for undo files
set undodir=~/.config/nvim/undo//
set undofile

command! Black execute ':!black %'
nnoremap <F2> :NERDTreeToggle<CR>
