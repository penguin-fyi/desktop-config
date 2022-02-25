" ==========================
" vimrc
" ==========================

" BTW
runtime! archlinux.vim

colorscheme default
set term=screen-256color

" Enable filetype
if has("autocmd")
  filetype on
  filetype plugin on
  filetype indent on
endif

" Enable syntax highlighting
if has("syntax")
  syntax on
endif


" ==========================
" Common
" ==========================


" Basic editor
set nowrap
set number
set cursorline
set showmatch
set scrolloff=3

" File encoding
set encoding=utf-8
set fileencoding=utf-8

" Indention
set expandtab
set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set list lcs=tab:\┆\ 

" Hidden buffers
set hidden

" Autosave
set autowriteall

" Update buffer when file changes
set autoread

" Enable mouse support
set mouse=a

" Toggle paste\nopaste
set pastetoggle=<leader>z

" Backspace nice
set backspace=indent,eol,start

" Search options
set hlsearch
set incsearch
set ignorecase
set smartcase

" Vertical separator
set fillchars+=vert:│

" Menus
set wildmenu
set wildmode=list:longest,full

" Folds
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=2

" status line
set statusline=""
set laststatus=2
set shortmess=F
set noshowmode
set noshowcmd

" disable preview on completion
set completeopt-=preview
set splitbelow

" Clear autocmd
augroup Local
    autocmd!
augroup END

" CWD follows current buffer
autocmd Local BufEnter * silent! lcd %:p:h


" ==========================
" Mappings
" ==========================


" Edit and reload vimrc
nnoremap <silent> <leader>ve :e $MYVIMRC<CR>
nnoremap <silent> <leader>vr :so $MYVIMRC<CR>

" Save
nnoremap <leader>s :w<cr>
inoremap <leader>s <C-c>:w<cr>

" Next and previous buffers
noremap <C-N> :bnext<CR>
noremap <C-P> :bprev<CR>

" Navigate panes
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k

" macros - qq record, q stop and Q apply
nnoremap Q @q
vnoremap Q :norm @q<cr>

" silent! helptags ALL


" vim: set ft=vim:
