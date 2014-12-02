if has('win32') || has('win64')
	source $HOME/dotfiles/vim/vimplugin/common.vim
	source $HOME/dotfiles/vim/vimplugin/neocomplcache.vim
	source $HOME/dotfiles/vim/vimplugin/snippet.vim
	source $HOME/dotfiles/vim/vimplugin/unite.vim
	source $HOME/dotfiles/vim/vimplugin/runs.vim
else
	source ~/.dotfiles/vim/vimplugin/common.vim
	source ~/.dotfiles/vim/vimplugin/neocomplcache.vim
	source ~/.dotfiles/vim/vimplugin/snippet.vim
	source ~/.dotfiles/vim/vimplugin/unite.vim
	source ~/.dotfiles/vim/vimplugin/runs.vim
endif
