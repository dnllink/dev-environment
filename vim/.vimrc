set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" My Plugins
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'artur-shaik/vim-javacomplete2'
Plugin 'udalov/kotlin-vim'
Plugin 'scrooloose/syntastic'
Plugin 'shougo/neocomplete.vim'
Plugin 'townk/vim-autoclose'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'hdima/python-syntax'
Plugin 'mhartington/oceanic-next'
Plugin 'majutsushi/tagbar'
Plugin 'universal-ctags/ctags'
Plugin 'tpope/vim-sensible'
Plugin 'kien/ctrlp.vim'

Plugin 'ryanoasis/vim-devicons'

call vundle#end()            " required

filetype plugin indent on    " required

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

" Configs
" Nerdtree
autocmd vimenter * NERDTree
nmap <F4> :NERDTreeFocus<CR>

" Theme
syntax enable

" for vim 8
if (has("termguicolors"))
 set termguicolors
endif

colorscheme OceanicNext

" Javacomplete2
autocmd FileType java setlocal omnifunc=javacomplete#Complete

" Neocomplete
let g:neocomplete#enable_at_startup = 1

" Devicons
set encoding=UTF-8

" Relative line numbers
:set number relativenumber

" Tagbar
nmap <F5> :TagbarToggle<CR>
