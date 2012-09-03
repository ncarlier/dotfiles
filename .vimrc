call pathogen#infect()
set nocompatible
set laststatus=2
set number
set ruler
set mouse=a
syntax on

" load the plugin and indent settings for the detected filetype
filetype plugin indent on

" Set encoding
set encoding=utf-8

" Backup and swap files
set backupdir=~/.vim/backup//
set directory=~/.vim/temp//

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Tab completion
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*

" Default colorscheme to solarized
set background=dark
let g:solarized_termcolors=256
colorscheme solarized
set cursorline

" Whitespace stuff
set nowrap
"set expandtab
set backspace=indent,eol,start
set list
set listchars=tab:\ \ ,trail:·,nbsp:_,extends:>,precedes:<

" 4 spaces tabs
"set tabstop=4
"set softtabstop=4
"set shiftwidth=4

" Move easily between windows
map <C-Left> <C-w>h
map <C-Down> <C-w>j
map <C-Up> <C-w>k
map <C-Right> <C-w>l
map <F2> :NERDTreeToggle <CR>

" tab navigation like firefox
nnoremap <silent> <A-Left>  :tabprevious<CR>
nnoremap <silent> <A-Right> :tabnext<CR>
nnoremap <silent> <C-t>     :tabnew<CR>
inoremap <silent> <A-Left>  <Esc>:tabprevious<CR>
inoremap <silent> <A-Right> <Esc>:tabnext<CR>
inoremap <silent> <C-t>     <Esc>:tabnew<CR>

" Avoid 'escaping' from home row
imap jj <Esc>

" Powerline
let g:Powerline_symbols = 'compatible'

" CtrlP, don’t manage working directory
let g:ctrlp_working_path_mode = 0
