if &compatible
    set nocompatible
endif
set runtimepath+=~/.dotfiles/repos/github.com/Shougo/dein.vim

call dein#begin(expand('~/.vim/dein'))

call dein#add('Shougo/vimproc.vim', {'build' : 'make'})
call dein#add('Shougo/dein.vim')
call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neocomplete.vim')
call dein#add('Shougo/vimshell')
call dein#add('Shougo/unite.vim')
call dein#add('Shougo/vimfiler.vim')
call dein#add('Shougo/vinarise')

call dein#add('itchyny/lightline.vim')

call dein#add('osyo-manga/vim-watchdogs')
call dein#add('osyo-manga/unite-quickfix')
call dein#add('jceb/vim-hier')
call dein#add('thinca/vim-quickrun')
call dein#add('rhysd/wandbox-vim')
call dein#add('nathanaelkane/vim-indent-guides')
call dein#add('t9md/vim-quickhl')

call dein#add('kana/vim-submode')

call dein#add('Rip-Rip/clang_complete')


call dein#end()

filetype plugin indent on
