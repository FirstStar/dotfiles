# environment variable
export LANG=ja_JP.UTF-8
export TERM=screen-256color

export EDITOR=/usr/local/bin/vim
export XDG_CONFIG_HOME=~/.config # XDG Base Directory Specification

case ${OSTYPE} in
	darwin*)
	export PATH=/usr/sbin:/usr/local/bin:/usr/local/opt/llvm/bin:/usr/bin:/bin:/sbin:/usr/local/sbin:~/.nodebrew/current/bin:/usr/local/texlive/2015basic/bin/universal-darwin
	export NODEBREW_ROOT=/usr/local/var/nodebrew
	# /opt/intel/bin/compilervars.sh intel64
	;;
esac


# enable syntax color
autoload -Uz colors
colors
 
# history
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
 
# prompt
PROMPT="
%{${fg[red]}%}[%n@%m]%{${reset_color}%} %~
$ "

# 単語の区切り文字を指定する
fpath=(/usr/local/share/zsh-completions $fpath)
autoload -Uz select-word-style
select-word-style default
# ここで指定した文字は単語区切りとみなされる
# / も区切りと扱うので、^W でディレクトリ１つ分を削除できる
zstyle ':zle:*' word-chars " /=;@:{},|"
zstyle ':zle:*' word-style unspecified
 
########################################
# enable complement
autoload -Uz compinit
compinit
 
# 補完で小文字でも大文字にマッチさせる
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
 
# ../ の後は今いるディレクトリを補完しない
zstyle ':completion:*' ignore-parents parent pwd ..
 
# sudo の後ろでコマンド名を補完する
zstyle ':completion:*:sudo:*' command-path /usr/local/sbin /usr/local/bin \
/usr/sbin /usr/bin /sbin /bin /usr/X11R6/bin
 
# ps コマンドのプロセス名補完
zstyle ':completion:*:processes' command 'ps x -o pid,s,args'
 
 
########################################
# vcs_info
 
autoload -Uz vcs_info
zstyle ':vcs_info:*' formats '(%s)-[%b]'
zstyle ':vcs_info:*' actionformats '(%s)-[%b|%a]'
precmd () {
psvar=()
LANG=en_US.UTF-8 vcs_info
[[ -n "$vcs_info_msg_0_" ]] && psvar[1]="$vcs_info_msg_0_"
}
RPROMPT="%1(v|%F{green}%1v%f|)"
 
 
########################################
# オプション
setopt print_eight_bit
setopt no_beep
setopt no_flow_control
setopt interactive_comments
setopt auto_cd
setopt auto_pushd
setopt pushd_ignore_dups
setopt magic_equal_subst
setopt share_history
setopt hist_ignore_all_dups
setopt hist_save_nodups
setopt hist_ignore_space
setopt hist_reduce_blanks
setopt auto_menu
setopt extended_glob
 
########################################
# キーバインド
 
bindkey '^R' history-incremental-pattern-search-backward
bindkey -e
bindkey "^?" backward-delete-char
bindkey "^H" backward-delete-char
bindkey "^[[3~" delete-char
bindkey "^[[1~" beginning-of-line
bindkey "^[[4~" end-of-line
########################################
# comamnd alias
 
alias la='ls -a'
alias ll='ls -l'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias mkdir='mkdir -p'
alias rvim='vim -R'
alias lvim='vim -l'
alias gcc='gcc-4.9'
alias g++='g++-4.9'

alias objdump='llvm-objdump'
alias readelf='greadelf'

alias tmls='tmux list-sessions'
alias tattach='tmux attach-session -t'
alias trename='tmux rename-session -t'
alias tkill='tmux kill-session -t'
alias tkillall='tmux kill-server'

alias clojure='lein repl'
alias repl='clisp ~/.vim/bundle/slimv/slime/start-swank.lisp'

alias julia='/Applications/Julia-0.4.6.app/Contents/Resources/julia/bin/julia'

########################################
# automatic ls
function chpwd() { ls }

########################################
# 江添コマンド
alias sl='echo lsではない。'
alias これは質問か？='echo 質問だ。'

alias :q='echo vimではない。'
alias :wq='echo vimではない。'
alias :w='echo vimではない。'
alias q='echo vimではない。'
alias wq='echo vimではない。'
alias w='echo vimではない。'

function command_not_found_handler(){
	# open ~/.大川隆法/ookawaryuho.jpg
	echo "コマンドではない."
	}

case ${OSTYPE} in
darwin*)
	#Mac用の江添
	alias apt-get='echo Debian系Linuxではない。'
	alias pacman='echo ArchLinuxではない。'
	alias emerge='echo GentooLinuxではない。'
	;;
linux*)
	#Linux用の江添
	alias brew='echo Macではない。'
	;;
esac

########################################
# 令呪コマンド
alias 令呪を以って命ずる='sudo'

########################################
# ご注文はコマンドですか？

# llvm clangによるC++'11, C++14に対応したコンパイラの起動
alias chino='clang++ -Wall -std=c++1z'

# Intel C++ CompilerによるC++'14とIntel Building Threading Blocksに対応したコンパイラの起動

alias cocoa='icpc -std=c++1y -tbb '

# OpenCL, C++'11, C++'14に対応させたllvm clangコンパイラの起動
case ${OSTYPE} in
darwin*)
	alias chiya='clang++ -Wall -std=c++1y -framework opencl -arch x86_64 '
	;;

esac

# OpenMP v3.1, C++'11, C++'14に対応させたllvm clangコンパイラの起動
alias syaro='clang-omp++ -Wall -std=c++1y -fopenmp '

# OpenMP v4.0, C++'11に対応させたgccコンパイラの起動
alias rize='g++ -std=gnu++1y -fopenmp '

########################################
function peco-select-history() {
    local tac
    if which tac > /dev/null; then
        tac="tac"
    else
        tac="tail -r"
    fi
    BUFFER=$(history -n 1 | \
        eval $tac | \
        peco --query "$LBUFFER")
    CURSOR=$#BUFFER
    zle clear-screen
}
zle -N peco-select-history
bindkey '^r' peco-select-history

########################################
# git command alias
alias commit='git commit -a -m'
alias pull='git pull'
alias push='git push'

alias ぞい！='git commit --allow-empty -m '

########################################
# file pass alias
alias _prog='~/Documents/programming/'

########################################
# enable sudo after commands alias
alias sudo='sudo '
 
# global alias
alias -g L='| less'
alias -g G='| grep'
 
# C で標準出力をクリップボードにコピーする
# mollifier delta blog : http://mollifier.hatenablog.com/entry/20100317/p1
if which pbcopy >/dev/null 2>&1 ; then
# Mac
alias -g C='| pbcopy'
elif which xsel >/dev/null 2>&1 ; then
# Linux
alias -g C='| xsel --input --clipboard'
elif which putclip >/dev/null 2>&1 ; then
# Cygwin
alias -g C='| putclip'
fi
 
 
 
########################################
# OS 別の設定
case ${OSTYPE} in
darwin*)
#Mac用の設定
export CLICOLOR=1
alias ls='ls -G -F'
;;
linux*)
#Linux用の設定
;;
esac

if [ "$TMUX" = "" ]; then TERM=xterm-256color tmux; fi
# vim:set ft=zsh:
eval "$(rbenv init -)"
