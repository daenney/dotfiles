""
" Plugins first
""

set rtp+=~/.vim/bundle/neobundle.vim
set shell=/bin/bash
set path=/usr/local/var/rbenv/shims:/usr/local/var/rbenv/bin:/usr/local/opt/pyenv/shims:/usr/local/opt/pyenv/bin:/usr/local/sbin:/usr/local/bin:/bin:/usr/sbin:/sbin:/usr/bin:/opt/X11/bin:/usr/local/MacGPG2/bin

" Plugin manager
call neobundle#rc(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'Shougo/vimproc'

" Fuzzy finder and buffer manager
NeoBundle 'kien/ctrlp.vim'
" Syntax checkers
NeoBundle 'scrooloose/syntastic'
" Project explorer
NeoBundle 'scrooloose/nerdtree'
" Useful statusbar
NeoBundle 'bling/vim-airline'
" Python autocompletion
NeoBundle 'davidhalter/jedi-vim'
" Git wrapper
NeoBundle 'tpope/vim-fugitive'
" Numbers
NeoBundle "myusuf3/numbers.vim"
" iTerm2 / tmux integration
NeoBundle 'sjl/vitality.vim'
" Align text
NeoBundle 'godlygeek/tabular'
" Code snippet support
NeoBundle 'guns/ultisnips'
" Hybrid colorscheme
NeoBundle 'w0ng/vim-hybrid'
" Puppet
NeoBundle 'daenney/vim-puppet'
" Markdown
NeoBundle 'tpope/vim-markdown'
" Nagios
NeoBundle 'bigbrozer/vim-nagios'
" HTML5
NeoBundle 'othree/html5.vim'
" Jinja
NeoBundle 'Glench/Vim-Jinja2-Syntax'
" Coffeescript
NeoBundle 'kchmck/vim-coffee-script'
" rst
NeoBundle 'Rykka/riv.vim'
" fish shell
NeoBundle 'dag/vim-fish'
filetype plugin indent on

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
syntax on

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
" Shortcuts
""
let mapleader=","

nmap \l :setlocal number!<CR>
nmap \o :set paste!<CR>
nmap \q :set nohlsearch<CR>
nmap <C-e> :e#<CR>
nmap <C-n> :bnext<CR>
nmap <C-p> :bprev<CR>

" Stop moving around linewise when we're going up and down
" and switch the direction so it's more logical on Colemak
nmap j gk
nmap k gj
vmap j gk
vmap k gj

map <Leader>x :%s/\s\+$//<CR>

" use hjkl
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Ctrl-P
let g:ctrlp_map = ';'
let g:ctrlp_match_window_bottom = 0
let g:ctrlp_match_window_reversed = 0
let g:ctrlp_custom_ignore = '\v\~$|\.(o|swp|pyc|wav|mp3|ogg|blend)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])'
let g:ctrlp_working_path_mode = 0
let g:ctrlp_dotfiles = 0
let g:ctrlp_switch_buffer = 0

" NERDTree
nmap \e :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Indenting stuff
nmap \t :set expandtab tabstop=4 shiftwidth=4 softtabstop=4<CR>
nmap \T :set expandtab tabstop=8 shiftwidth=8 softtabstop=4<CR>
nmap \M :set noexpandtab tabstop=8 softtabstop=4 shiftwidth=4<CR>
nmap \m :set expandtab tabstop=2 shiftwidth=2 softtabstop=2<CR>
nmap \w :setlocal wrap!<CR>:setlocal wrap?<CR>

" Statusline
set laststatus=2 " Always display the statusline in all windows
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)

" Airline
let g:airline_enable_branch=1
let g:airline_enable_syntastic=1
let g:airline_powerline_fonts=0
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_linecolumn_prefix = '␊ '
let g:airline_linecolumn_prefix = '␤ '
let g:airline_linecolumn_prefix = '¶ '
let g:airline_branch_prefix = '⎇ '
let g:airline_paste_symbol = 'ρ'
let g:airline_paste_symbol = 'Þ'
let g:airline_paste_symbol = '∥'

" Riv
let g:riv_fold_auto_update=0

""
" Filetype settings
""
" tabs are fine in XML/HTML
au filetype html,xml set listchars-=tab:>.
" Ruby
au BufNewFile,BufRead *.rb set ts=2 sw=2
" HTML
au BufNewFile,BufRead *.html set ts=2 sw=2
" Makrdown
au BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn} setf markdown
" Make files
au FileType make setlocal noexpandtab

""
" General GUI options
""
if has("gui_running")
    set guioptions=egmrt
    set guioptions-=lrb
    if has("autocmd")
        " Resize splits when resizing window
        autocmd VimResized * wincmd =
    endif
endif

if ! has('gui_running')
    set ttimeoutlen=10
    augroup FastEscape
        autocmd!
        au InsertEnter * set timeoutlen=0
        au InsertLeave * set timeoutlen=1000
    augroup END
endif

colorscheme hybrid
let g:syntastic_puppet_lint_disable = 0
