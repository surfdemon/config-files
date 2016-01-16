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

if $COLORTERM == "gnome-terminal"
	set t_cr=256
endif

syntax on 
filetype plugin indent on

set laststatus=2
set tabstop=2
set shiftwidth=2
set expandtab
set relativenumber 

imap <leader>' ''<ESC>i
imap <leader>" ""<ESC>i
imap <leader>( ()<ESC>i
imap <leader>[ []<ESC>i
imap <leader>{ {}<ESC>i
imap <leader>< <><ESC>i
imap <leader>. class=""<ESC>i
imap <leader># id=""<ESC>i

map \t :NERDTreeToggle<CR>

command W w 

let g:netrw_ftp_cmd = 'pftp'
set completeopt=longest,menuone

