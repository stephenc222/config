set nocompatible              " be iMproved, required
"filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=/usr/local/opt/fzf
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.

" Plugin 'ascenator/L9', {'name': 'newL9'}
" added nerdtree
Plugin 'scrooloose/nerdtree'
Plugin 'w0rp/ale'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Quramy/vim-js-pretty-template'
Plugin 'Quramy/tsuquyomi'
Plugin 'jason0x43/vim-js-indent'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'airblade/vim-gitgutter'
Plugin 'junegunn/fzf.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'leafoftree/vim-vue-plugin'
Plugin 'mhartington/oceanic-next'
Plugin 'leafgarland/typescript-vim'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'ryanoasis/vim-devicons'
Plugin 'jiangmiao/auto-pairs'
Plugin 'heavenshell/vim-jsdoc'
Plugin 'sheerun/vim-polyglot'
Plugin 'rust-lang/rust.vim'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
let g:vim_vue_plugin_load_full_syntax = 1
let g:deoplete#enable_at_startup = 1
let g:javascript_plugin_jsdoc = 1
set re=1

" show existing tab with 2 spaces width
set tabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2
" On pressing tab, insert 2 spaces
set expandtab
set updatetime=100
set noswapfile
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
set encoding=UTF-8
set t_Co=256
"set t_ut=
let g:airline_theme='oceanicnext'
let g:jsx_ext_required = 0

colorscheme OceanicNext 
syntax on
:set number relativenumber

:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END
" Search as words are typed, highlight them
:set incsearch
:set hlsearch
" Fugitive modification of :Ggrep command
" autocmd QuickFixCmdPost *grep* cwindow

" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>

command! F :Files
command! NT :NERDTreeToggle
command! NF :NERDTreeFind
" nerdtree additional custom configurations
"
" open nerdtree automatically when vim starts up
" autocmd vimenter * NERDTree 
" open a NERDTree automatically when vim starts up if no files were specified
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" open NERDTree automatically when vim starts up on opening a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
" close vim if the only window left open is a NERDTree?
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
