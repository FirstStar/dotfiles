ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" || true

brew tap caskroom/cask || true
brew tap homebrew/dupes || true
brew tap homebrew/science || true

brew install zsh || true
brew install openssh || true
brew install openssl || true
brew install lua || true
brew install luajit || true
brew install git || true
brew install git-flow || true
brew install mercurial || true
brew install mysql || true
brew install sqlite3 || true
brew install wget || true
brew install curl || true

brew install emacs || true
brew install vim || true

brew install gcc || true
brew install llvm || true
brew install go || true
brew install tmux || true
brew install make || true
brew install cmake || true
brew install nginx || true
brew install gcc || true
brew install llvm || true
brew install ghc || true
brew install rbenv || true
brew install gdb || true
brew install boost || true
brew install python || true
brew install python3 || true
brew install boost-python || true
brew install qt || true
brew install qt5 || true
brew install lynx || true
brew install opencv || true
brew install openexr || true
brew install open-mpi || true
brew install clisp || true
brew install leiningen || true
brew install graphviz || true
brew install graph-tool || true
brew install brew-cask || true

brew cask install sourcetree || true
brew cask install google-japanese-ime || true
brew cask install alfred || true
brew cask install karabiner || true
brew cask install xamarin || true
brew cask install xamarin-android || true
brew cask install xamarin-ios || true
brew cask install xamarin-studio || true
brew cask install google-chrome || true
brew cask install firefox || true
brew cask install skype || true
brew cask install xquartz || true
brew cask install iterm2 || true
brew cask install processing || true
brew cask install java || true
brew cask install eclipse-java || true
brew cask install mono-mre || true
brew cask install mono-mdk || true
brew cask install virtualbox || true

sudo gem install cocoapods || true

mkdir ~/.vim
mkdir ~/.vim/bundle
git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim

mkdir ~/.dotfiles
git clone https://github.com/FirstStar/dotfiles.git ~/.dotfiles
ln ~/.dotfiles/vimrc ~/.vimrc
ln ~/.dotfiles/zshrc ~/.zshrc
