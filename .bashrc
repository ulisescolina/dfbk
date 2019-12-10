stty -ixon
shopt -s autocd #Allows you to cd into directory merely by typing the directory name.
HISTSIZE= HISTFILESIZE=

# Setting Bash prompt. Capitalizes username and host if root user (my root user uses this same config file).
if [[ $EUID -ne 0 ]];
  #then export PS1="\[\e[0;34m\]┌─[\[\e[1;36m\u\e[0;34m\]]─[\e[1;37m\w\e[0;34m]: \$\[\e[0;34m\]\n\[\e[0;34m\]└────╼\[\e[0;31m\]>> \[\e[m\]"
  then export PS1="\n\[$(tput sgr0)\]\[\033[38;5;208m\][\[$(tput bold)\]\[$(tput sgr0)\]\[\033[38;5;33m\]\w\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;202m\]]\[$(tput sgr0)\]\[\033[38;5;15m\]\n \[$(tput sgr0)\]\[\033[38;5;200m\]\A\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;34m\]>>\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"
  #then export PS1="\e[3${HOSTCOLOR}m \h  \e[3${USERCOLOR}m \u  \e[3${PATHCOLOR}m \w  \n";
	#else export PS1="\n\[$(tput sgr0)\]\[\033[38;5;208m\][\[$(tput bold)\]\[$(tput sgr0)\]\[\033[38;5;33m\]\W\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;202m\]]\[$(tput sgr0)\]\[\033[38;5;15m\]\n \[$(tput sgr0)\]\[\033[38;5;200m\]\A\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;34m\]>>\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"
fi
export GPG_TTY=$(tty)

# System Maintainence
alias mw="~/.config/mutt/mutt-wizard.sh"
alias muttwizard="~/.config/mutt/mutt-wizard.sh"
alias progs="(pacman -Qet && pacman -Qm) | sort -u" # List programs I've installed
alias orphans="pacman -Qdt" # List orphan programs
alias pI="pacman -Q --info" # informacion acerca de un paquete
alias espacio="ncdu" # informacion acerca de espacio en un directorio
alias sdn="sudo shutdown now"
alias psref="gpg-connect-agent RELOADAGENT /bye" # Refresh gpg
alias actualizarmirrorlist="rfshmirror"

# Some aliases
alias p="sudo pacman"
alias SS="sudo systemctl"
alias v="vim"
alias sv="sudo vim"
alias r="ranger"
alias sr="sudo ranger"
alias ka="killall"
alias g="git"
alias trem="transmission-remote"
alias mkd="mkdir -pv"
alias rf="source ~/.bashrc"
alias ref="shortcuts.sh && source ~/.bashrc" # Refresh shortcuts manually and reload bashrc
alias bw="wal -i ~/.config/wall.png" # Rerun pywal
alias pi="bash ~/.larbs/wizard/wizard.sh"

# Adding color
alias ls='ls -hN --color=auto --group-directories-first'
alias crep="grep --color=always" # Color grep - highlight desired sequence.
alias ccat="highlight --out-format=xterm256" #Color cat - print file with syntax highlighting.

# Internet
alias yt="youtube-dl --add-metadata -ic" # Download video link
alias yta="youtube-dl --add-metadata -xic" # Download only audio
alias YT="youtube-viewer"
alias ethspeed="speedometer -r enp0s25"
alias wifispeed="speedometer -r wlp8s0"
alias starwars="telnet towel.blinkenlights.nl"

# TeX
alias Txa="cp ~/Plantillas/LaTeX/Articulo/*"
alias TxIEEE1="cp -r ~/Plantillas/LaTeX/IEEEArticle/*"
alias TxIEEE2="cp -r ~/Plantillas/LaTeX/IEEEJrnl/*"
alias Txs="cp ~/Plantillas/LaTeX/beamer.tex"
alias TC='texclear'

source ~/.shortcuts

# NPM config
source ~/.scripts/npm-config

rfshmirror() {
	cant_mirrorlist=5
	if [ -n "$1" ]; then
		cant_mirrorlist=$1;
	fi
	sudo reflector --verbose -p http -p ftp --latest "$cant_mirrorlist" --sort rate --save /etc/pacman.d/mirrorlist; }
shdl() { curl -O $(curl -s http://sci-hub.tw/"$@" | grep location.href | grep -o http.*pdf) ;}
