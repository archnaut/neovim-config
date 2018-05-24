call plug#begin()
Plug 'kien/ctrlp.vim'
Plug 'vim-airline/vim-airline'
call plug#end()

let mapleader="\<SPACE>"

set showmatch
set number
set formatoptions+=o
set expandtab
set tabstop=4
set shiftwidth=4

set nojoinspaces

set splitbelow
set splitright

if !&scrolloff
    set scrolloff=3
endif
if !&sidescrolloff
    set sidescrolloff=5
endif
set nostartofline

if &listchars ==# 'eol:$'
    set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
endif
set list

highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
match ExtraWhitespace /\s\+$\||\t/

set ignorecase
set smartcase
set gdefault

if maparg('<C-L>', 'n') ==# ''
    nnoremap <silent> <C-L> :nohlsearch<CR><C-L>
endif

nmap <Leader>s : %//g<Left><Left>

function! NumberToggle()
    if(&relativenumber == 1)
        set nornu
        set number
    else
        set rnu
    endif
endfunc

nnoremap <leader>r :call NumberToggle()<cr>

nnoremap ; : 
nnoremap Q @q

" Open file menu
nnoremap <Leader>o :CtrlP<CR>

" Open buffer menu
nnoremap <Leader>b :CtrlPBuffer<CR>

" Open most recently used files
nnoremap <Leader>f :CtrlPMRUFiles<CR>

let g:airline#extensions#tabline#enabled = 2
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#right_set = ' '
let g:airline#extensions#tabline#right_alt_sep = '|'
let g:airline_left_sep = ' '
let g:airline_left_alt_sep = '|'
let g:airline_right_sep = ' '
let g:airline_right_alt_sep = '|'
let g:airline_theme= 'gruvbox'
