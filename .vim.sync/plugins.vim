" Plugins for Vim

set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle.vim
call vundle#begin()
Plugin 'VundleVim/vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'easymotion/vim-easymotion'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'mattn/webapi-vim'
Plugin 'mattn/gist-vim'
Plugin 'kien/ctrlp.vim'
Plugin 'rust-lang/rust.vim'
Plugin 'msanders/snipmate.vim'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'einars/js-beautify'
Plugin 'rhysd/vim-clang-format'
Plugin 'Chiel92/vim-autoformat'
Plugin 'hgoldstein95/ocp-indent-easy.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'digitaltoad/vim-jade'
Plugin 'Townk/vim-autoclose'
Plugin 'vim-jp/vim-java'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'bling/vim-bufferline'

Plugin 'vim-scripts/oceandeep'
Plugin 'altercation/vim-colors-solarized'
call vundle#end()
filetype plugin indent on
