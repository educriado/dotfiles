set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" NERDTree
Plugin 'scrooloose/nerdtree'

" YouCompleteMe
Plugin 'Valloric/YouCompleteMe'

" delimitMate - Cierra parentesis y brackets automaticamente
Plugin 'Raimondi/delimitMate'

" Esquema de colores solarized
Plugin 'altercation/vim-colors-solarized'

" Vim-Airline - muestra el modo y codificacion de fichero, etc
Plugin 'bling/vim-airline'

" Ctrl P - Para buscar ficheros en el sistema
Plugin 'ctrlpvim/ctrlp.vim'

" Syntastic - Corrector de sintaxis en distintos lenguajes de programacion
Plugin 'scrooloose/syntastic'

" Fugitive - Integracion de vim con git
Plugin 'tpope/vim-fugitive'

" Vim-indent-guides: marca con colores los distintos niveles de indentacion
" No funciona muy bien. Se llama con <Leader>ig
Plugin 'nathanaelkane/vim-indent-guides'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" To ignore plugin indent changes, instead use:
" filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

inoremap jj <ESC>

" Las teclas no funcionan
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>
" Tab navigation like Firefox.
nnoremap <C-S-tab> :tabprevious<CR>
nnoremap <C-tab>   :tabnext<CR>
nnoremap <C-t>     :tabnew<CR>
inoremap <C-S-tab> <Esc>:tabprevious<CR>i
inoremap <C-tab>   <Esc>:tabnext<CR>i
inoremap <C-t>     <Esc>:tabnew<CR>
let mapleader = ","

filetype plugin indent on
syntax on
set autoindent
set smartindent
set encoding=utf-8
set number
set t_Co=256
set background=dark
set hlsearch
set colorcolumn=80
" let g:solarized_termcolors=256
" colorscheme solarized

" Ajustes para delimitMate
let delimitMate_expand_cr = 1

" Ajustes para airline
set laststatus=2
let g:airline_powerline_fonts = 1

" Abrir NERDTree de forma automatica
au VimEnter *  NERDTree
