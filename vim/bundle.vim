filetype plugin on

if has('vim_starting')
	if has('win32') || has('win64')
		set runtimepath+=/Vim/bundle/neobundle.vim/
		call neobundle#rc(expand('/Vim/bundle'))
	else	
		set runtimepath+=~/.vim/bundle/neobundle.vim/
		call neobundle#rc(expand('~/.vim/bundle'))
	endif
endif

NeoBundle 'Shougo/neobundle.vim'
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Shougo/vimproc',{
	\'build' :{
		\'windows' : 'make -f make_mingw32.mak',
		\'cygwin' : 'make -f make_cygwin.mak',
		\'mac' : 'make -f make_mac.mak',
		\'unix' : 'make -f make_unix.mak',
	\},
 \}

NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/neosnippet-snippets'

NeoBundle 'Shougo/unite.vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'Shougo/vimfiler.vim'

NeoBundle 'itchyny/lightline.vim'

NeoBundle 'kana/vim-submode'

NeoBundle 'thinca/vim-quickrun'
NeoBundle "osyo-manga/shabadou.vim"
NeoBundle "osyo-manga/vim-watchdogs"
NeoBundle "osyo-manga/unite-quickfix"

NeoBundle "jceb/vim-hier"

NeoBundle "rhysd/wandbox-vim"

NeoBundle "rizzatti/dash.vim"

NeoBundle "Shougo/vimshell.vim"

NeoBundle "tpope/vim-fugitive"

NeoBundle "tomtom/tcomment_vim"

NeoBundle 'nathanaelkane/vim-indent-guides'
