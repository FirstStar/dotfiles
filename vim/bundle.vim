if &compatible
    set nocompatible
endif
set runtimepath+=~/.dotfiles/repos/github.com/Shougo/dein.vim

call dein#begin(expand('~/.vim/dein'))

call dein#add('Shougo/vimproc')
call dein#add('Shougo/dein.vim')
call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neocomplete.vim')
call dein#add('Shougo/unite.vim')


call dein#end()

filetype plugin indent on
