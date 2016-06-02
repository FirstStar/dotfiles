if 0 | endif
if has('vim_starting')
		if &compatible
			set nocompatible
		endif

	set runtimepath+=~/.config/nvim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

" ----- plugin install -----
NeoBundleLazy 'Shougo/deoplete.nvim', {
	\ "autoload" : {"insert": 1}}
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vinarise'

NeoBundle 'osyo-manga/vim-watchdogs'
NeoBundle 'osyo-manga/unite-quickfix'

NeoBundle 'bronson/vim-trailing-whitespace'

NeoBundle 'Rip-Rip/clang_complete'
NeoBundle 'thinca/vim-quickrun'

NeoBundle 'itchyny/lightline.vim'
" ----- end plugin install section -----

call neobundle#end()

filetype plugin indent on

NeoBundleCheck

