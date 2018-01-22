call plug#begin('~/.local/share/nvim/plugged')

" General Plugins
Plug 'easymotion/vim-easymotion'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'flazz/vim-colorschemes'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'godlygeek/tabular'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Shougo/vimproc.vim'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf'
Plug 'wesQ3/vim-windowswap'
Plug 'benmills/vimux'
Plug 'jakedouglas/exuberant-ctags'
Plug 'honza/vim-snippets'
Plug 'Townk/vim-autoclose'
Plug 'tomtom/tcomment_vim'
Plug 'tobyS/vmustache'
Plug 'janko-m/vim-test'
Plug 'maksimr/vim-jsbeautify'
Plug 'kablamo/vim-git-log'
Plug 'gregsexton/gitv'
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-startify'
" Elixir Plugins
Plug 'slashmili/alchemist.vim', {'for': 'elixir'}

" Haskell Plugins
Plug 'eagletmt/ghcmod-vim', {'for': 'haskell'}
Plug 'eagletmt/neco-ghc', {'for': 'haskell'}

" Python Plugins
Plug 'ehamberg/vim-cute-python', {'for': 'python'}

" Rust Plugins
Plug 'sebastianmarkow/deoplete-rust'
" Javascript Plugins

" C Plugins
Plug 'zchee/libclang-python3', {'for':['c', 'c++']} ", {'for': 'c++'}
Plug 'zchee/deoplete-clang', {'for': ['c', 'c++']} ", {'for': 'c++'}

" Go Plugins
Plug 'fatih/vim-go', {'for': 'go'}
Plug 'nsf/gocode', {'for': 'go'}
Plug 'zchee/deoplete-go', {'for': 'go'}

" Elixir Support 
Plug 'elixir-lang/vim-elixir', {'for': 'elixir'}
Plug 'avdgaag/vim-phoenix', {'for': 'elixir'}
Plug 'mmorearty/elixir-ctags', {'for': 'elixir'}
Plug 'mattreduce/vim-mix', {'for': 'elixir'}
Plug 'BjRo/vim-extest', {'for': 'elixir'}
Plug 'frost/vim-eh-docs', {'for': 'elixir'}
Plug 'slashmili/alchemist.vim', {'for': 'elixir'}
Plug 'tpope/vim-endwise', {'for': 'elixir'}
Plug 'jadercorrea/elixir_generator.vim', {'for': 'elixir'}

" Elm Support
Plug 'lambdatoast/elm.vim'

call plug#end()


" OSX stupid backspace fix
set backspace=indent,eol,start

set number
set nowrap

syntax on

set background=light
colorscheme blazer " neverland seoul256
"let hr = (strftime('%H'))
"if hr >= 18
"elseif hr >= 8
"  set background=light
"  colorscheme seoul256
"elseif hr >= 0
"  set background=dark
"  colorscheme neverland
  " colorscheme blazer
"endif
let g:airline_theme='deus'
filetype plugin indent on

set nocompatible
set number
set nowrap
set showmode
set tw=80
set smartcase
set smarttab
set smartindent
set autoindent
set softtabstop=2
set shiftwidth=2
set expandtab
set incsearch
set mouse=a
set history=1000
set clipboard=unnamed

set completeopt=menuone,menu,longest

set wildignore+=*\\tmp\\*,*.swp,*.swo,*.zip,.git,.cabal-sandbox
set wildmode=longest,list,full
set wildmenu
set completeopt+=longest

set t_Co=256

set cmdheight=1

"""" Syntastic stuff
let g:syntastic_python_checkers=['pylint','pep8','python']
let g:syntastic_check_on_open=1
let g:syntastic_warning_symbol='⚠'
let g:syntastic_error_symbol='✗'
let g:syntastic_cpp_checkers=['gcc','cppcheck','cpplint','ycm','clang_tidy','clang_check']
let g:syntastic_c_checkers=['gcc','make','cppcheck','clang_tidy','clang_check']
let g:syntastic_vim_checkers=['vimlint']
let g:syntastic_c_clang_check_sort=1
let g:syntastic_c_clang_tidy_sort=1
map <Leader>s :SyntasticToggleMode<CR>

"""" Nerd Tab
map <Leader>n :NERDTreeToggle<CR>


"""" Deoplete
let g:deoplete#enable_at_startup = 1
let $PATH .= (":" . $HOME . "/.cabal/bin" . ":" . $HOME . "/.local/bin")


" Bindings and Macros
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


" deoplete tab-complete
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
