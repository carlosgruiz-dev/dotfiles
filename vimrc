set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin '907th/vim-auto-save'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'godlygeek/tabular'
Plugin 'leafgarland/typescript-vim'
Plugin 'mattn/emmet-vim'
Plugin 'mileszs/ack.vim'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'plasticboy/vim-markdown'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'stephpy/vim-yaml'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fugitive'
Plugin 'wakatime/vim-wakatime'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" colorscheme Tomorrow-Night

" setting showing numbers in files
set number relativenumber
augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
    autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

" disable folding
set nofoldenable

let mapleader = ","

set showmatch

" setting GUI options
" set guioptions-=m
" set guioptions-=T


" autosave options
let g:auto_save = 1 " enable AutoSave on startup
" let g:auto_save_silent = 0 " show message when file is saved
let g:auto_save_events = ["InsertLeave"]


if executable('ag')
    let g:ackprg = 'ag --vimgrep'
endif

command FormatJSON %!python3 -m json.tool

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/*,*/platforms/*,*/plugins/*,*/venv/*,*/__pycache__/*     " Linux/MacOSX
map <F2> :NERDTreeToggle<CR>
map <F4> :AutoSaveToggle<CR>
map <Leader>t :NERDTreeToggle<CR>

if has("autocmd")

    " javascript
    au BufReadPost *.js,*.json,*.ts set filetype=javascript
    au FileType javascript set smarttab
    au FileType javascript set expandtab
    au FileType javascript set tabstop=2
    au FileType javascript set shiftwidth=2
    au FileType javascript set nowrap
    au FileType javascript set textwidth=80
    au FileType javascript set list
    au FileType javascript set lcs=tab:>-,eol:<

    " c++
    au BufReadPost *.cpp,*.cxx,*.h,*.hpp set filetype=cpp
    au FileType cpp set smarttab
    au FileType cpp set expandtab
    au FileType cpp set tabstop=4
    au FileType cpp set shiftwidth=4
    au FileType cpp set nowrap
    au FileType cpp set list
    au FileType cpp set lcs=tab:>-,eol:<

    " python
    au BufReadPost *.py set filetype=python
    au FileType python set expandtab
    au FileType python set tabstop=4
    au FileType python set shiftwidth=4
    au FileType python set nowrap
    au FileType python set list
    au FileType python set lcs=tab:>-,eol:<

    " html
    au BufReadPost *.html,*.htm,*.tmlp set filetype=xhtml
    au FileType xhtml set expandtab
    au FileType xhtml set tabstop=4
    au FileType xhtml set shiftwidth=4
    au FileType xhtml set nowrap
    au FileType xhtml set textwidth=0
    au FileType xhtml set list
    au FileType xhtml set lcs=tab:>-,eol:<

    " css
    au BufReadPost *.css,*.scss,*.less set filetype=css
    au FileType css set expandtab
    au FileType css set tabstop=2
    au FileType css set shiftwidth=2
    au FileType css set nowrap
    au FileType css set textwidth=0
    au FileType css set list
    au FileType css set lcs=tab:>-,eol:<

endif
