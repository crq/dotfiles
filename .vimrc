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
Plugin 'bling/vim-bufferline'
Plugin 'vim-scripts/searchcomplete'
Plugin 'shougo/neocomplete.vim'
Plugin 'shougo/neosnippet'
Plugin 'shougo/neosnippet-snippets'

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

" VIM-Bufferline plugin settings
" Bufferline doesn't echo to command bar
let g:bufferline_echo = 0

" Neocomplete settings
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_auto_select = 0
" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplete#close_popup() . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? neocomplete#close_popup() : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplete#close_popup()
inoremap <expr><C-e>  neocomplete#cancel_popup()

" Neosnippit settings
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)
