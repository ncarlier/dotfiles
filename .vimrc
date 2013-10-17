set nocompatible
set laststatus=2
set number
set ruler
syntax on

" Vundle
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Bundles
" Theme
Bundle 'altercation/vim-colors-solarized'
" Theme
Bundle 'vim-scripts/molokai'
" Git wrapper
Bundle 'tpope/vim-fugitive'
" File tree
Bundle 'scrooloose/nerdtree'
" Full path finder
Bundle 'kien/ctrlp.vim'
" Tab completion
Bundle 'ervandew/supertab'
" Zoom <c-w>o
Bundle 'vim-scripts/ZoomWin'
" Statusline
Bundle 'Lokaltog/vim-powerline'
" Char jumping
Bundle 'edsono/vim-matchit'
" Buffer Navigation
Bundle 'jeetsukumaran/vim-buffergator'
" Javascript support
Bundle 'pangloss/vim-javascript'
" Markdown support
Bundle 'tpope/vim-markdown'
" Coffee script support
Bundle 'kchmck/vim-coffee-script'
" GIT support
Bundle 'tpope/vim-git'
" Ruby support
Bundle 'vim-ruby/vim-ruby'
" Syntax checking
Bundle 'scrooloose/syntastic'
" Command line
Bundle 'sjl/clam.vim'
" Less support
Bundle 'groenewege/vim-less'
" Handlebars support
Bundle 'nono/vim-handlebars'
" NGINX support
Bundle 'vim-scripts/nginx.vim'
" Text auto align
Bundle 'godlygeek/tabular'
" Snippets
Bundle 'garbas/vim-snipmate'
" Utility
Bundle 'tomtom/tlib_vim'
" Utility
Bundle 'MarcWeber/vim-addon-mw-utils'

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
set expandtab
set backspace=indent,eol,start
set list
set listchars=tab:\ \ ,trail:·,nbsp:_,extends:>,precedes:<

" 4 spaces tabs
"set smartindent
set tabstop=4
set softtabstop=4
set shiftwidth=4

" Move easily between windows
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <F2> :NERDTreeToggle <CR>

" Avoid 'escaping' from home row
imap jj <Esc>
"imap <C-Space> <C-X><C-O>

" Powerline
let g:Powerline_symbols = 'compatible'

" CtrlP
let g:ctrlp_working_path_mode = 0 " don’t manage working directory
let g:ctrlp_switch_buffer = 'et' "don't jump if the buffer is not in the current tab

" Mouse
set mouse+=a
if &term =~ '^screen'
    " tmux knows the extended mouse mode
    set ttymouse=xterm2
endif

if has('gui_running')
	set guifont=Monospace\ 12
endif

" tab navigation like firefox
nnoremap <silent> <A-Left>  :tabprevious<CR>
nnoremap <silent> <A-Right> :tabnext<CR>
nnoremap <silent> <C-t>     :tabnew<CR>
inoremap <silent> <A-Left>  <Esc>:tabprevious<CR>
inoremap <silent> <A-Right> <Esc>:tabnext<CR>
inoremap <silent> <C-t>     <Esc>:tabnew<CR>

