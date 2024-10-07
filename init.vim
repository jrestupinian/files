set number
set relativenumber
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent

" Set directory for backup files
set backupdir=~/.config/nvim/backup//

" Set directory for swap files
set directory=~/.config/nvim/swap//

" Set directory for undo files
set undodir=~/.config/nvim/undo//
set undofile

colorscheme morning

" Enable true color support
if has('termguicolors')
  set termguicolors
endif


call plug#begin('~/.local/share/nvim/plugged')

" Python syntax highlighting and indentation
Plug 'vim-python/python-syntax'
Plug 'Vimjas/vim-python-pep8-indent'

" Autocompletion and Linting
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dense-analysis/ale'

" File Explorer
Plug 'preservim/nerdtree'

" Status Line
Plug 'vim-airline/vim-airline'

call plug#end()


" Use <Tab> for trigger completion with characters ahead and navigate.
" Use <S-Tab> to go back.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Use `K` to show documentation in preview window
nnoremap <silent> K :call CocActionAsync('doHover')<CR>

" Use `gd` to go to definition
nnoremap <silent> gd <Plug>(coc-definition)

" Use `gr` to find references
nnoremap <silent> gr <Plug>(coc-references)


let g:ale_linters = {
\   'python': ['flake8'],
\}
let g:ale_fixers = {
\   'python': ['black'],
\}
let g:ale_python_flake8_executable = 'flake8'
let g:ale_python_black_executable = 'black'

