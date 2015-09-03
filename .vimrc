set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

" Plugins go under here...
Plugin 'scrooloose/nerdtree'
Plugin 'ddollar/nerdcommenter'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'rking/ag.vim'
Plugin 'chriskempson/base16-vim'
Plugin 'chriskempson/tomorrow-theme', {'rtp': 'vim/' }
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-bundler'
Plugin 'easymotion/vim-easymotion'
Plugin 'slim-template/vim-slim'
Plugin 'tpope/vim-fugitive'
Plugin 'bling/vim-airline'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-ruby/vim-ruby'
Plugin 'vim-scripts/searchcomplete'
Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
"see :h vundle f more details or wiki for FAQ
"Put your non-Plugin stuff after this line

" Set mapleader
let mapleader = ","
syntax enable

" Set tab and indentation spacing
set expandtab
set shiftwidth=2
set softtabstop=2

" Show line numbers
set number

" Mappings
nnoremap <leader>c :call NERDComment(0, "toggle")<CR>
vnoremap <leader>c :call NERDComment(0, "toggle")<CR>
map <leader>n :NERDTreeToggle<CR>

" Do not wrap text
set nowrap

" Do not use swapfile
set noswapfile

" Autosave everything on lost focus and ignore errors
au FocusLost * silent! wa

" Save on buffer switch
set autowriteall

" Line on 80th column
set cc=80

" Airline plugin settings
" Airline to use Powerline fonts
let g:airline_powerline_fonts = 1
" Airline always show
set laststatus=2
" Fix Airline timeout
set ttimeoutlen=50

" Utilisnips plugin settings
let g:UltiSnipsExpandTrigger="<c-k>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
