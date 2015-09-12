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
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-ruby/vim-ruby'
Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'tpope/vim-endwise'
Plugin 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'altercation/vim-colors-solarized'

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

" Settings for terminals only
if &term =~ '^xterm'
  " line in insert mode
  let &t_SI .= "\<Esc>[5 q"
  " solid block on normal mode
  let &t_EI .= "\<Esc>[2 q"
endif

" Settings to apply if not in Apple Terminal
if $TERM_PROGRAM != 'Apple_Terminal' || has('gui_running')
  " Color scheme settings
  let base16colorspace=256
  colorscheme base16-flat
  set background=dark

  " Highlight current line
  set cursorline
endif

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
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <leader>r :FixWhitespace<CR>
vnoremap <leader>r :FixWhitespace<CR>
map <leader> <Plug>(easymotion-prefix)
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)

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

" Powerline plugin settings
set laststatus=2
set noshowmode
set timeoutlen=1000 ttimeoutlen=0

" Utilisnips plugin settings
let g:UltiSnipsExpandTrigger="<c-k>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" Easymotion not case sensitive
let g:EasyMotion_smartcase = 1
