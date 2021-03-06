" map key
" keep with other machine's vimrc.
" nnoremap ; :
" nnoremap : ;


filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim 
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"let path = '~/some/path/here' "call vundle#rc(path)

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between here and filetype plugin indent on.
" scripts on GitHub repos
Plugin 'Lokaltog/vim-easymotion'
let g:EasyMotion_leader_key='f'

Plugin 'bling/vim-airline'
set laststatus=2
let g:airline_detect_whitespace=0
let g:airline#extensions#tabline#enabled=1
let g:airline_theme="bubblegum"

Plugin 'terryma/vim-expand-region' "select the word in the () 

Plugin 'scrooloose/nerdtree'
map <S-m> :NERDTreeToggle<CR>
"autocmd vimenter * NERDTree

Plugin 'vim-scripts/nerdtree-ack'

Plugin 'terryma/vim-multiple-cursors'

Plugin 'kien/ctrlp.vim'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

"vim plugin
Plugin 'plasticboy/vim-markdown'
let g:vim_markdown_folding_disabled=1

Plugin 'altercation/vim-colors-solarized'
if has('gui_running')
  set background=light
else
  set background=dark
endif

Plugin 'tpope/vim-surround'

Plugin 'scrooloose/nerdcommenter' " 注释

Plugin 'Shougo/neocomplcache.vim' " 自动完成

let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
"autoselction
let g:neocomplcache_enable_auto_select=1

Plugin 'spf13/vim-autoclose'


" scripts from http://vim-scripts.org/vim/scripts.html
" 
" scripts not on GitHub
"
"
" git repos on your local machine (i.e. when working on your own plugin)
" ...
call vundle#end()
filetype plugin indent on     " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Plugin commands are not allowed.
" Put your stuff after this line
"
"
"
set nocompatible 
"set runtimepath=$VIMRUNTIME " set clean runtime
syntax on
filetype on " check filetype by suffix
filetype indent on
set nobackup
"set ruler "show the ruler under the space
set number
set relativenumber
"set showmode
set scrolloff=4 " set the comfotable 
set backspace=indent,eol,start
set matchtime=1
set hlsearch
set incsearch "indient search like google 
set smartcase
set expandtab "tab -> space
set smarttab "awesome
set autoindent
set smartindent "look at :help indent
set shiftwidth=2
set tabstop=2
set softtabstop=2

"colorscheme desert
colorscheme solarized
"set list listchars=eol:¬,tab:▸\ ,trail:., "delete it if i dont like this
"set background=dark
"
source $VIMRUNTIME/mswin.vim
behave mswin

"font 
""set guifont=Yahei\ Consolas\ Hybrid\ 12
