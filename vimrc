""
" Basic needs
""
set nocompatible
set backspace=indent,eol,start
set number
set encoding=utf-8
set gcr=n:blinkon0
set nobackup
set noswapfile
set hidden
set nrformats=
set ttyfast
set title
set mouse=a
set clipboard=unnamed
set autoread
""
" Search
""
set showmatch
set smartcase
set incsearch
set ignorecase
set hlsearch

""
" Default indenting
""
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab
set scrolloff=5
set autoindent

""
" List chars
""
set list
set listchars=""                  " Reset the listchars
set listchars=tab:\ \             " a tab should display as "  ", trailing whitespace as "."
set listchars+=trail:.            " show trailing spaces as dots
set listchars+=extends:>          " The character to show in the last column when wrap is
" off and the line continues beyond the right of the screen
set listchars+=precedes:<

""
" Wildmode
""
set wildmode=list:longest,full

""
" Completion
""
set completeopt=longest,menuone


""
" Vundle
""
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" Utility bundles
Bundle 'gmarik/vundle'
Bundle 'L9'
Bundle 'tomtom/tlib_vim'
Bundle 'MarcWeber/vim-addon-mw-utils'
" Functionality
Bundle 'mileszs/ack.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'ervandew/supertab'
Bundle 'jeetsukumaran/vim-buffergator'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'ZoomWin'
Bundle 'chrisbra/NrrwRgn'
Bundle 'tpope/vim-eunuch'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
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
Bundle 'garbas/vim-snipmate'
Bundle 'honza/snipmate-snippets'
Bundle 'godlygeek/tabular'
Bundle 'sjl/gundo.vim'
Bundle 'majutsushi/tagbar'
" Python Bundles
Bundle 'python.vim'
Bundle 'fs111/pydoc.vim'
Bundle 'klen/python-mode'
" Syntax Bundles
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'apeschel/vim-syntax-apache'
Bundle 'daenney/vim-puppet'
Bundle 'tpope/vim-git'
Bundle 'othree/html5.vim'
Bundle 'tpope/vim-markdown'
Bundle 'uggedal/jinja-vim'

" Turn all the fancy back on
filetype plugin indent on
syntax on

""
" General GUI options
""
if has("gui_running")
    set guioptions=egmrt
    set guioptions-=lrb
    set guifont=Monaco\ for\ Powerline:h15
    if has("autocmd")
        " Resize splits when resizing window
        autocmd VimResized * wincmd =
    endif
endif

""
" Keyboard mappings
""
" save some typing
nnoremap ; :
let mapleader=","
" :w!!
cmap w!! %!sudo tee > /dev/null %
" Gundo
nnoremap <F6> :GundoToggle<CR>
" Tagbar
nnoremap <F8> :TagbarToggle<CR>
" Paste
nmap <silent> <F4> :set invpaste<CR>:set paste?<CR>
imap <silent> <F4> <ESC>:set invpaste<CR>:set paste?<CR>
" Swap two words
nmap <silent> gw :s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<CR>`'
" Underline the current line with '='
nmap <silent> <leader>ul :t.\|s/./=/g\|:nohls<cr>
" find merge conflict markers
nmap <silent> <leader>fc <ESC>/\v^[<=>]{7}( .*\|$)<CR>
" Toggle hlsearch with <leader>hs
nmap <leader>hs :set hlsearch! hlsearch?<CR>
" Ctrl+n+Ctrl+n to toggle linenumbers
nmap <C-N><C-N> :set invnumber<CR>
" use hjkl
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

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
    " Shamelessly stolen from Janus
    if has("gui_running")
        " Map command-[ and command-] to indenting or outdenting
        " while keeping the original selection in visual mode
        vmap <D-]> >gv
        vmap <D-[> <gv

        nmap <D-]> >>
        nmap <D-[> <<

        omap <D-]> >>
        omap <D-[> <<

        imap <D-]> <Esc>>>i
        imap <D-[> <Esc><<i

        " Bubble single lines
        nmap <D-Up> [e
        nmap <D-Down> ]e
        nmap <D-k> [e
        nmap <D-j> ]e

        " Bubble multiple lines
        vmap <D-Up> [egv
        vmap <D-Down> ]egv
        vmap <D-k> [egv
        vmap <D-j> ]egv

        " Map Command-# to switch tabs
        map  <D-0> 0gt
        imap <D-0> <Esc>0gt
        map  <D-1> 1gt
        imap <D-1> <Esc>1gt
        map  <D-2> 2gt
        imap <D-2> <Esc>2gt
        map  <D-3> 3gt
        imap <D-3> <Esc>3gt
        map  <D-4> 4gt
        imap <D-4> <Esc>4gt
        map  <D-5> 5gt
        imap <D-5> <Esc>5gt
        map  <D-6> 6gt
        imap <D-6> <Esc>6gt
        map  <D-7> 7gt
        imap <D-7> <Esc>7gt
        map  <D-8> 8gt
        imap <D-8> <Esc>8gt
        map  <D-9> 9gt
        imap <D-9> <Esc>9gt
    endif
    " Map command-[ and command-] to indenting or outdenting
    " while keeping the original selection in visual mode
    vmap <A-]> >gv
    vmap <A-[> <gv

    nmap <A-]> >>
    nmap <A-[> <<

    omap <A-]> >>
    omap <A-[> <<

    imap <A-]> <Esc>>>i
    imap <A-[> <Esc><<i

    " Bubble single lines
    nmap <C-Up> [e
    nmap <C-Down> ]e
    nmap <C-k> [e
    nmap <C-j> ]e

    " Bubble multiple lines
    vmap <C-Up> [egv
    vmap <C-Down> ]egv
    vmap <C-k> [egv
    vmap <C-j> ]egv

    " Make shift-insert work like in Xterm
    map <S-Insert> <MiddleMouse>
    map! <S-Insert> <MiddleMouse>

    " Map Control-# to switch tabs
    map  <C-0> 0gt
    imap <C-0> <Esc>0gt
    map  <C-1> 1gt
    imap <C-1> <Esc>1gt
    map  <C-2> 2gt
    imap <C-2> <Esc>2gt
    map  <C-3> 3gt
    imap <C-3> <Esc>3gt
    map  <C-4> 4gt
    imap <C-4> <Esc>4gt
    map  <C-5> 5gt
    imap <C-5> <Esc>5gt
    map  <C-6> 6gt
    imap <C-6> <Esc>6gt
    map  <C-7> 7gt
    imap <C-7> <Esc>7gt
    map  <C-8> 8gt
    imap <C-8> <Esc>8gt
    map  <C-9> 9gt
    imap <C-9> <Esc>9gt
    " Done stealing from Janus
endif

"" 
" Plugin configuration
""

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

" Python-mode
let g:pymode_rope = 0
let g:pymode_lint = 0

""
" Filetype changes
""

" tabs are fine in XML/HTML
au filetype html,xml set listchars-=tab:>.
" Jinja2
au BufNewFile,BufRead *.jinja set filetype=jinja
" Ruby
au BufNewFile,BufRead *.rb set ts=2 sw=2 tw=2
" HTML
au BufNewFile,BufRead *.html set ts=2 sw=2 tw=2
" Makrdown
au BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn} setf markdown
" Make files
au FileType make setlocal noexpandtab

""
" Colorscheme
""
colorscheme hybrid
