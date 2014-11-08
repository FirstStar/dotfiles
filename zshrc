# environment variable
export LANG=ja_JP.UTF-8
export PATH=/usr/local/bin:/usr/bin:/bin:/sbin:/usr/texbin:/usr/local/waiwaibin
export TERM=screen-256color

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
alias emacs='vim'
alias rvim='vim -R'
alias lvim='vim -l'
alias gcc='gcc-4.9'
alias g++='g++-4.9'

alias tmls='tmux list-sessions'
alias tattach='tmux attach-session -t'
alias trename='tmux rename-session -t'
alias tkill='tmux kill-session -t'
alias tkillall='tmux kill-server'

alias reply='tw'
alias timeline='tw --timeline'
alias tweet='tw'

alias clojure='lein repl'

########################################
# git command alias
alias commit='git commit -a -m'
alias pull='git pull'
alias push='git push'

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
