" Check / Install Vim-Plug
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall | source $MYVIMRC
endif
" End Check / Install Vim-Plug

" Use Vim-Plug To Install Plugins
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
" End Use Vim-Plug To Install Plugins

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

" Settings for Python Files 


" End Settings for Python Files 

" Setup Some Handy Shortcuts
imap <leader>' ''<ESC>i
imap <leader>" ""<ESC>i
imap <leader>( ()<ESC>i
imap <leader>[ []<ESC>i
imap <leader>{ {}<ESC>i
imap <leader>< <><ESC>i
imap <leader># class=""<ESC>i
imap <leader>. id=""<ESC>i
" End Setup Some Handy Shortcuts

" Auto Correct Save Typo
:command W w 
:command Wq wq
" End Auto Correct Save Typo

" NERDTree Settings 
map \t :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" NERDTree Settings 

let g:netrw_ftp_cmd = 'pftp'
set completeopt=longest,menuone

" Fix Color and Set Theme
if $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal"
    set t_Co=256
endif
syntax enable 
set background=dark
colorscheme primary
" End Fix Color and Set Theme
