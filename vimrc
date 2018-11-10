"""""""""""""""""""""""""""""""""""""""""""""""
" My .vimrc yo!
"
""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
let mapleader=","

"""""""""""""""""""""""
" Plug
"""""""""""""""""""""""

" Install Plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins to install
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
call plug#end()

"""""""""""""""""""""""
" VIM settings
"""""""""""""""""""""""
set hidden           " set hidden
set nowrap           " no automatic word wrap
set number           " show line numbers
set tabstop=4        " default tab is 4 space
set autoindent       " always set autoindent on
set copyindent       " copy the previous indent in autoindent
set shiftwidth=4     " number of spaces to use for autoindent
set shiftround       " use multiple of shiftwidth when indenting with '<' 
set showmatch        " set show matching parenthesis
set smartcase        " ignore case if search pattern is all lowercase, case-sensitive otherwise
set smarttab         " insert tabs on the start of a line according to shiftwidth
set expandtab        " use spaces instead of tabs"
set hlsearch         " highlight search terms
set incsearch        " show search matches as you type
set nobackup         " don't create backups
set noswapfile       " don't create swap files
set history=1000     " remember more history
set undolevels=1000  " use many levels of undo
set title            " show terminal title

"""""""""""""""""""""""
" Key Mappings
"""""""""""""""""""""""
" NerdTree
nmap <silent> <C-N> :NERDTreeToggle<CR>   

"fzf mappings
nmap ; :Buffers<CR>
nmap <Leader>f :Files<CR>
nmap <Leader>t :Tags<CR>
nmap <Leader>c :Commit<CR>

" Window split navigation
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Load color scheme (now mustang. see .vim/colors)
set t_Co=256
syntax on
colorscheme Mustang_Vim_Colorscheme_by_hcalves
