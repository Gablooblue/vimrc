set nocompatible              
filetype off                  

set rtp+=$HOME/.vim/bundle/Vundle.vim/
call vundle#begin('$HOME/.vim/bundle/')
    Plugin 'VundleVim/Vundle.vim'
    Plugin 'scrooloose/syntastic'
    Plugin 'vim-airline/vim-airline'
    Plugin 'vim-airline/vim-airline-themes'
    Plugin 'jistr/vim-nerdtree-tabs'
    Plugin 'tomasr/molokai'
    Plugin 'scrooloose/nerdtree'
    Plugin 'terryma/vim-multiple-cursors'	
    Plugin 'yggdroot/indentline'
    Plugin 'jiangmiao/auto-pairs'
    Plugin 'easymotion/vim-easymotion'
    Plugin 'tpope/vim-fugitive'
    Plugin 'mattn/emmet-vim'
    Plugin 'rust-lang/rust.vim'
    Plugin 'tpope/vim-rails'
    Plugin 'othree/html5.vim'
    Plugin 'hail2u/vim-css3-syntax'
    Plugin 'akz92/vim-ionic2'
    Plugin 'leafgarland/typescript-vim'
    Plugin 'vim-latex/vim-latex'
    Plugin 'alvan/vim-closetag'
    Plugin 'pangloss/vim-javascript'
    Plugin 'maxmellon/vim-jsx-pretty'
    Plugin 'ctrlpvim/ctrlp.vim'
    Plugin 'junegunn/fzf'
    Plugin 'junegunn/fzf.vim'


call vundle#end() 
filetype plugin indent on

let g:airline#extensions#tabline#enabled = 1
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:tex_flavor='latex'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_eruby_ruby_quiet_messages =
    \ {'regex': 'possibly useless use of a variable in void context'}
set laststatus=2

" Close tag
let g:closetag_filenames = ".html,.xhtml,*.phtml, *.html.erb"

" color scheme of the moment:
syntax on
set number
set autoindent
set backspace=indent,eol,start
set tabstop=4 shiftwidth=4 expandtab
set number relativenumber
set nu rnu
let &softtabstop=&shiftwidth
colorscheme molokai
if has('gui_running')
	set guioptions-=T  "remove toolbar
	set guioptions-=r  "remove right-hand scroll bar
	set guioptions-=L  "remove left-hand scrollbar
endif

let g:ctrlp_working_path_mode = 'ra'

" add jbuilder syntax highlighting
au BufNewFile,BufRead *.json.jbuilder set ft=ruby

" JSX highlighting
let g:vim_jsx_pretty_colorful_config = 1 " default 0

set autoread

let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_MultipleCompileFormats='pdf, aux'
set nogdefault
