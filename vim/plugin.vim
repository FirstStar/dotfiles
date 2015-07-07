if has('win32') || has('win64')
	source $HOME/dotfiles/vim/vimplugin/common.vim
	source $HOME/dotfiles/vim/vimplugin/neocomplete.vim
	source $HOME/dotfiles/vim/vimplugin/snippet.vim
	source $HOME/dotfiles/vim/vimplugin/unite.vim
	source $HOME/dotfiles/vim/vimplugin/runs.vim
	source $HOME/dotfiles/vim/vimplugin/lisp.vim
else
	source ~/.dotfiles/vim/vimplugin/common.vim
	source ~/.dotfiles/vim/vimplugin/neocomplete.vim
	source ~/.dotfiles/vim/vimplugin/snippet.vim
	source ~/.dotfiles/vim/vimplugin/unite.vim
	source ~/.dotfiles/vim/vimplugin/runs.vim
	source ~/.dotfiles/vim/vimplugin/lisp.vim
	source ~/.dotfiles/vim/vimplugin/clang_complete.vim
endif
