########################################
# 江添コマンド

# ---ここコメントアウトはずさないでください---
#alias emacs='echo vimではない。'
#alias vim='echo emacsではない。'
# ----ここまでコメントアウト解除禁止----

alias sl='echo lsではない。'
alias これは質問か？='echo 質問だ。'

alias :q='echo vimではない。'
alias :wq='echo vimではない。'
alias :w='echo vimではない。'
alias q='echo vimではない。'
alias wq='echo vimではない。'
alias w='echo vimではない。'

# Handler関係
function command_not_found_handler(){
	echo 'コマンドではない。'
}

# OS依存系
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
