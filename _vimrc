set langmenu=none
set nocompatible
filetype off
behave mswin

" auto reload
autocmd! bufwritepost _vimrc source %

set rtp+=$VIM/vimfiles/bundle/Vundle.vim/
let path='$VIM/vimfiles/bundle'
call vundle#begin(path)

Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Townk/vim-autoclose'
Plugin 'majutsushi/tagbar'
Plugin 'davidhalter/jedi-vim'

Plugin 'Aben/moria'

call vundle#end()            " required
filetype plugin indent on    " required

set bs=2
set history=50
set ruler
set autoread

colorscheme moria
set background=dark
set guifont=Terminus:h11
set cursorline

syntax on
set hlsearch
set nu

set clipboard=unnamed
set showmatch
set showmode
set wildchar=<TAB>
set wildmenu

" ignore these files while expanding wild chars
set wildignore=*.o,*.class,*.pyc

set autoindent " auto indentation
set incsearch " incremental search
set nobackup " no *~ backup files
set copyindent " copy the previous indentation on autoindenting
set ignorecase " ignore case when searching
set smartcase " ignore case if search pattern is all lowercase,case-sensitive otherwise
set smarttab " insert tabs on the start of a line according to context

" TAB setting{
set expandtab "replace <TAB> with spaces
set softtabstop=4
set tabstop=4
set shiftwidth=4
au FileType Makefile set noexpandtab
"}

" disable sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" status line {
set laststatus=2
set statusline=\ %{HasPaste()}%<%-15.25(%f%)%m%r%h\ %w\ \
set statusline+=\ \ \ [%{&ff}/%Y]
set statusline+=\ \ \ %<%20.30(%{hostname()}:%{CurDir()}%)\
set statusline+=%=%-10.(%l,%c%V%)\ %p%%/%L
function! CurDir()
    let curdir = substitute(getcwd(), $HOME, "~", "")
    return curdir
endfunction

function! HasPaste()
    if &paste
        return '[PASTE]'
    else
        return ''
    endif
endfunction
"}

"---------------------------------------------------------------------------
" ENCODING SETTINGS
"---------------------------------------------------------------------------
set encoding=utf-8
set termencoding=utf-8
set termencoding=cp1251
set fileencoding=utf-8
set fileencodings=utf-8,cp1251,latin1
lan mes none
