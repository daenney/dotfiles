set nocompatible
set backspace=indent,eol,start
set nobackup
set noswapfile
set hidden
set showmatch
set smartcase
set incsearch
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab
set scrolloff=5
set hlsearch
set title
set ttyfast
set autoindent
" show line numbers
set number
set encoding=utf-8
" stop the blinking!
set gcr=n:blinkon0
" treat all numbers as decimals
set nrformats=

" hilight some stuff
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.

" tabs are fine in XML/HTML
autocmd filetype html,xml set listchars-=tab:>.

" save some typing
nnoremap ; :
let mapleader=","

" clear the search hilight
nmap <silent> ,/ :nohlsearch<CR>

" use hjkl
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Mac hack so we can use Meta to move around
let os=substitute(system('uname'), '\n', '', '')
if has("gui_macvim")
    set macmeta

    " Colemak hjkl hack
    nnoremap <M-h> <Left>|
    nnoremap <M-n> <Down>|
    nnoremap <M-e> <Up>|
    nnoremap <M-i> <Right>|
    vnoremap <M-h> <Left>|
    vnoremap <M-n> <Down>|
    vnoremap <M-e> <Up>|
    vnoremap <M-i> <Right>|

endif

" Vundle
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'L9'
Bundle 'wincent/Command-T'
Bundle 'tpope/vim-eunuch'
Bundle 'tpope/vim-fugitive'
Bundle 'larssmit/vim-getafe'
Bundle 'w0ng/vim-hybrid'
Bundle 'sjl/badwolf'
Bundle 'scrooloose/syntastic'
Bundle 'tpope/vim-commentary'
Bundle 'kana/vim-textobj-user'
Bundle 'kana/vim-textobj-entire'
Bundle 'sjl/vitality.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'Lokaltog/vim-powerline'
Bundle 'msanders/snipmate.vim'
Bundle 'godlygeek/tabular'
Bundle 'sjl/gundo.vim'
Bundle 'majutsushi/tagbar'
Bundle 'AutoComplPop'
" Python Bundles
Bundle 'python.vim'
Bundle 'fs111/pydoc.vim'
Bundle 'klen/python-mode'
Bundle 'uggedal/jinja-vim'
" Syntax Bundles
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'apeschel/vim-syntax-apache'
Bundle 'daenney/vim-puppet'
Bundle 'tpope/vim-git'
Bundle 'Markdown'

" Turn all the fancy back on
filetype plugin indent on
syntax on
colorscheme hybrid

" Omnicompletion
set ofu=syntaxcomplete#Complete

" NERDTree
let NERDTreeShowHidden=1
autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Powerline
set laststatus=2
let g:Powerline_symbols = 'fancy'
let g:Powerline_stl_path_style = 'short'
let g:Powerline_colorscheme = 'skwp'
let g:Powerline_mode_n = 'N '
let g:Powerline_mode_i = 'I '
let g:Powerline_mode_r = 'R '
let g:Powerline_mode_v = 'V '
let g:Powerline_mode_V = 'VL'
let g:Powerline_mode_cv = 'VC'
let g:Powerline_mode_s = 'S '
let g:Powerline_mode_S = 'SL'
let g:Powerline_mode_cs = 'SC'

" Gundo
nnoremap <F5> :GundoToggle<CR>

" Tagbar
nnoremap <F8> :TagbarToggle<CR>

" Python-mode
let g:pymode_rope = 0
let g:pymode_lint = 0

" Jinja2
au BufNewFile,BufRead *.jinja set filetype=jinja


" Ctrl+n+Ctrl+n to toggle linenumbers
nmap <C-N><C-N> :set invnumber<CR>

highlight BadWhitespace ctermbg=red guibg=red

" GUI options
if has("gui_running")
    set guioptions=egmrt
    set guioptions-=lrb
    set guifont=Monaco\ for\ Powerline:h15
endif

