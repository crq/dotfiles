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
Plugin 'ervandew/supertab'
Plugin 'scrooloose/nerdtree'
Plugin 'ddollar/nerdcommenter'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'rking/ag.vim'
Plugin 'chriskempson/base16-vim'
Plugin 'chriskempson/tomorrow-theme', {'rtp': 'vim/' }

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

"Set mapleader
:let mapleader = ","
:syntax enable

"set tab and indentation spacing
set expandtab
set shiftwidth=2
set softtabstop=2

"show line numbers
set number

" Mappings
:nnoremap <leader>c :call NERDComment(0, "toggle")<CR>
:vnoremap <leader>c :call NERDComment(0, "toggle")<CR>
:map <leader>n :NERDTreeToggle<CR>

"autosave everything on lost focus and ignore errors
au FocusLost * silent! wa

"save on buffer switch
set autowriteall

"line on 80th column
set cc=80
