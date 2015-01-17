if has('win32') || has('win64')
	source $HOME/dotfiles/vim/first.vim

	source $HOME/dotfiles/vim/basic.vim
	source $HOME/dotfiles/vim/file.vim
	source $HOME/dotfiles/vim/bundle.vim
	source $HOME/dotfiles/vim/plugin.vim
	source $HOME/dotfiles/vim/color.vim
	source $HOME/dotfiles/vim/keymap.vim
	source $HOME/dotfiles/vim/windows.vim
	
	source $HOME/dotfiles/vim/last.vim
    else
	source ~/.dotfiles/vim/basic.vim
	source ~/.dotfiles/vim/file.vim
	source ~/.dotfiles/vim/bundle.vim
	source ~/.dotfiles/vim/plugin.vim
	source ~/.dotfiles/vim/color.vim
	source ~/.dotfiles/vim/keymap.vim
endif
