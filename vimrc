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
Plug 'drewtempelmeyer/palenight.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mileszs/ack.vim'
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
set term=xterm-256color " fixes terminal colors in tmux

"""""""""""""""""""""""
" Plugin config
"""""""""""""""""""""""
" Palenight color theme
set background=dark
colorscheme palenight
let g:lightline = { 'colorscheme' : 'palenight' }
let g:airline_theme = "palenight"

if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
  set termguicolors
endif

" Ack vim
let g:ack_autoclose = 1   " autoclose ack search pane
set shellpipe=>           " hides Ack search from terminal

"""""""""""""""""""""""
" Key Mappings
"""""""""""""""""""""""
" Quick close
nmap <leader>x :q<CR>

" NerdTree
nmap <silent> <C-N> :NERDTreeToggle<CR>   

"fzf mappings
nmap ; :Buffers<CR>
nmap <leader>f :Files<CR>
nmap <leader>t :Tags<CR>
nmap <leader>c :Commit<CR>

"vim fugitive mappings
nmap <leader>gb :Gblame<CR>
nmap <leader>gs :Gstatus<CR>
nmap <leader>gd :Gdiff<CR>

"Ack mappings
nmap <leader>d :Ack!<space>
