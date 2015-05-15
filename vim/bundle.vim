filetype plugin on

if has('vim_starting')
	if has('win32') || has('win64')
		set runtimepath+=$VIM/bundle/neobundle.vim/
		call neobundle#begin(expand('/Program Files/Vim/bundle'))
		NeoBundleFetch 'Shougo/neobundle.vim'
		call neobundle#end()
	else	
		set runtimepath+=~/.vim/bundle/neobundle.vim/
		call neobundle#begin(expand('~/.vim/bundle'))
		NeoBundleFetch 'Shougo/neobundle.vim'
		call neobundle#end()
	endif
endif

NeoBundle 'Shougo/neobundle.vim'

NeoBundle 'Shougo/vimproc',{
	\'build' :{
		\'windows' : 'make -f make_mingw32.mak',
		\'cygwin' : 'make -f make_cygwin.mak',
		\'mac' : 'make -f make_mac.mak',
		\'unix' : 'make -f make_unix.mak',
	\},
 \}

NeoBundle 'Shougo/neosnippet.vim'
"NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/neocomlete.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'OmniSharp/omnisharp-vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'Shougo/vimfiler.vim'
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'kana/vim-submode'
NeoBundle 'thinca/vim-quickrun'
NeoBundle "osyo-manga/shabadou.vim"
NeoBundle "osyo-manga/vim-watchdogs"
NeoBundle "osyo-manga/unite-quickfix"
NeoBundle 'osyo-manga/vim-marching'
NeoBundle "jceb/vim-hier"
NeoBundle "rhysd/wandbox-vim"
NeoBundle "rizzatti/dash.vim"
NeoBundle "Shougo/vimshell.vim"
NeoBundle "tpope/vim-fugitive"
NeoBundle "tomtom/tcomment_vim"
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'bronson/vim-trailing-whitespace'
"NeoBundle 'kovisoft/slimv'
NeoBundle 'amdt/vim-niji'
NeoBundle 't9md/vim-quickhl'

if has('win32') || has('win64')
	NeoBundle 'taku25/VisualStudioController'
	NeoBundle 'taku25/vim-visualstudio'
endif

