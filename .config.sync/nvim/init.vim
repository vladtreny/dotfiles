" Simple Settings
let mapleader = " "

syntax on
nnoremap ; :
highlight Visual cterm=NONE ctermbg=10 ctermfg=NONE
set ignorecase
set smartcase
nnoremap <leader>c :noh<cr>

set expandtab
set tabstop=2
set softtabstop=2
set autoindent
set shiftwidth=2

exec "set listchars=tab:\uBB\uBB,trail:\uB7,nbsp:~"
set list

vnoremap <C-c> "+y

set relativenumber
set number
nnoremap <leader>n :call RelNumberToggle()<cr>
function! RelNumberToggle()
  if &relativenumber
    set norelativenumber
  else
    set relativenumber
  endif
endfunction

highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)

nnoremap <M-h> <C-w><left>
nnoremap <M-j> <C-w><up>
nnoremap <M-k> <C-w><down>
nnoremap <M-l> <C-w><right>

autocmd BufWritePre *.{js,py,cs,java} Autoformat

let g:airline_powerline_fonts=1
let g:airline_theme = 'solarized'
let g:airline_solarized_bg = 'dark'
let g:airline#extensions#bufferline#enabled = 1

" Plugins
call plug#begin('~/.config/nvim/plugged')
Plug 'kien/ctrlp.vim'
Plug 'Townk/vim-autoclose'
Plug 'scrooloose/syntastic'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Chiel92/vim-autoformat'
call plug#end()
