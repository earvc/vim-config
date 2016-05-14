"""""""""""""""""""""""""""""""""""""""""""""""
" My .vimrc yo!
"
"""""""""""""""""""""""""""""""""""""""""""""""

" Vundle
set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Nerd tree install
Plugin 'scrooloose/nerdTree'

" All plugins must be added before this line
call vundle#end()
filetype plugin indent on

" change the mapleader from \ to ,
let mapleader=","

" Basic vim settings
set hidden           " set hidden
set nowrap           " no automatic word wrap
set number           " show line numbers
set tabstop=4        " default tab is 4 space
set autoindent       " always set autoindent on
set copyindent       " copy the previous indent in autoindent
set shiftwidth=4     " number of spaces to use for autoindent
set shiftround       " use multiple of shiftwidth when indenting with '<' 
set showmatch        " set show matching parenthesis
set ignorecase       " ignore case when searching
set smartcase        " ignore case if earch patter is all lowercase, case-sensitive otherwise
set smarttab         " insert tabs on the start of a line according to shiftwidth
set expandtab        " use spaces instead of tabs"
set hlsearch         " highlight search terms
set incsearch        " show search matches as you type
set nobackup         " don't create backups
set noswapfile       " don't create swap files
set history=1000     " remember more history
set undolevels=1000  " use many levels of undo
set title            " show terminal title

" Folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use

" NERDtree key mappings
nmap <silent> <C-N> :NERDTreeToggle<CR>   

" Load color scheme (now mustang. see .vim/colors)
set t_Co=256
syntax on
colorscheme Mustang_Vim_Colorscheme_by_hcalves
