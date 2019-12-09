syntax on
set autoindent
set nu rnu
set shiftwidth=4
set softtabstop=4
set expandtab
set visualbell
set fileformat=unix
set fileformats=unix,dos

let maplocalleader = "\<Space>"

if has("gui_running")
    if has("win32")
        au GUIEnter * simalt ~x
        set guifont=Consolas:h11
    endif
    set guioptions-=m  "remove menu bar
    set guioptions-=T  "remove toolbar
    set guioptions-=r  "remove right-hand scroll bar
    set guioptions-=L  "remove left-hand scroll bar
    set guioptions-=b  "remove left-hand scroll bar
endif

call plug#begin('~/.vim/plugged')
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'
    Plug 'arcticicestudio/nord-vim'
    Plug 'vim-airline/vim-airline'
    Plug 'tpope/vim-fugitive'
    Plug 'dense-analysis/ale'
    Plug 'lervag/vimtex'
call plug#end()

colorscheme nord
let g:airline#extensions#tabline#enabled = 1
