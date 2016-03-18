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
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/syntastic'
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
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'thoughtbot/vim-rspec'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'kchmck/vim-coffee-script'
Plugin 'isRuslan/vim-es6'
Plugin 'Raimondi/delimitMate'
Plugin 'wesQ3/vim-windowswap'

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
if &term =~ '^xterm' || &term == 'screen-256color'
  " line in insert mode
  let &t_SI .= "\<Esc>[6 q"
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

" Set 4 space tabs for JS and HTML files
autocmd FileType javascript setlocal sw=4 sts=4
autocmd FileType html setlocal sw=4 sts=4

" Show line numbers
set number

:command W w

" NERDCommenter mappings
nnoremap <leader>c :call NERDComment(0, "toggle")<CR>
vnoremap <leader>c :call NERDComment(0, "toggle")<CR>

" NERDTree mappings
map <leader>n :NERDTreeToggle<CR>

" Vim trailing whitespace mappings
nnoremap <leader>r :StripWhitespace<CR>
vnoremap <leader>r :StripWhitespace<CR>

" Easymotion mappings
map <leader> <Plug>(easymotion-prefix)
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)

" RSpec.vim mappings
map <Leader>p :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

" Do not wrap text
set nowrap

" Do not use swapfile
set noswapfile

" Autosave everything on lost focus and ignore errors
au FocusLost * silent! wa

" Save on buffer switch
set autowriteall

" Save undo history when switching buffers
set hidden

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

" Vim-rspec settings
let g:rspec_runner = "os_x_iterm"

" Ctrl-P settings
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
