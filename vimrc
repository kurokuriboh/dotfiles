"""""""""""""""""""""""""""""""""""""""""""""""
" Author: Hiep Can
"
"""""""""""""""""""""""""""""""""""""""""""""""
" Plugins 
"""""""""""""""""""""""""""""""""""""""""""""""
" VimWiki
set nocompatible

" Pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on

" NERDTREE
map <C-n> :NERDTreeToggle<CR>

" SuperTab

" ctrlp
set runtimepath^=~/.vim/bundle/ctrlp.vim

" Vim-markdown

" Vim-airline
let g:airline#extensions#tabline#enabled = 1 
let g:airline#extensions#tabline#fnamemod = ':t' 
let g:airline#extensions#branch#enabled = 1
let g:airline_powerline_fonts = 1

" Vim-instant-markdown

" Syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

" Hdevtools
au FileType haskell nnoremap <buffer> <F1> :HdevtoolsType<CR>
au FileType haskell nnoremap <buffer> <silent> <F2> :HdevtoolsClear<CR>

" Tagbar
nmap <F8> :TagbarToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""
" General
"""""""""""""""""""""""""""""""""""""""""""""""
set hlsearch
set ignorecase
set smartcase
set ruler

"""""""""""""""""""""""""""""""""""""""""""""""
" Design and Interface
"""""""""""""""""""""""""""""""""""""""""""""""
" Gruvbox
colorscheme gruvbox

set background=dark
set number
set numberwidth=4
set wrap
set cursorline
highlight ColorColumn ctermbg=blue
call matchadd('ColorColumn', '\%81v', 100)

"""""""""""""""""""""""""""""""""""""""""""""""
" Indentaion
"""""""""""""""""""""""""""""""""""""""""""""""
set shiftwidth=4
set softtabstop=4
set expandtab
set tabstop=4
set autoindent

"""""""""""""""""""""""""""""""""""""""""""""""
" Mapping
"""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = "\<space>"
nnoremap <leader>vs :vsplit 
inoremap jk <esc>
inoremap <esc> <nop>

" Move to the next buffer
nmap <leader>l :bnext<CR>

" Move to the previous buffer
nmap <leader>h :bprevious<CR>

" Close the current buffer
nmap <leader>bq :bdelete<CR>
