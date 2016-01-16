call plug#begin()
  Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
  Plug 'https://github.com/msanders/snipmate.vim.git'
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'https://github.com/tpope/vim-surround.git'
  Plug 'othree/html5.vim'
  Plug 'benekastah/neomake'
  Plug 'moll/vim-node'
  Plug 'vim-scripts/SyntaxComplete'
  Plug 'hail2u/vim-css3-syntax'
  Plug 'othree/javascript-libraries-syntax.vim'
  Plug 'elzr/vim-json', {'autoload':{'filetypes':['json']}}
  Plug 'Yggdroot/indentLine'
  Plug 'Raimondi/delimitMate'
  Plug 'tpope/vim-fugitive'
  Plug 'airblade/vim-gitgutter'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'bling/vim-airline'
  Plug 'tomtom/tcomment_vim'
  Plug 'gorodinskiy/vim-coloresque'
  Plug 'Shougo/deoplete.nvim'
  Plug 'Shougo/neosnippet.vim'
  Plug 'wincent/terminus'
  Plug 'terryma/vim-multiple-cursors'
call plug#end()
syntax on
filetype plugin indent on
set laststatus=2
set tabstop=4
set shiftwidth=4
set expandtab
set number 
set relativenumber
nmap \n :setlocal number!<CR>
nmap \p :set paste!<CR>
map \t :NERDTreeToggle<CR>

imap <leader>' ''<ESC>i
imap <leader>" ""<ESC>i
imap <leader>( ()<ESC>i
imap <leader>[ []<ESC>i
imap <leader>{ {}<ESC>i
imap <leader>< <><ESC>i
imap <leader># class=""<ESC>i
imap <leader>. id=""<ESC>i

:command W w 
:command Wq wq


if $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal"
  set t_Co=256
endif

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
colorscheme brookstream

let g:netrw_ftp_cmd = 'pftp'
set completeopt=longest,menuone
syntax enable 
set t_co=256
set background=dark
colorscheme primary

