# variables
export EDITOR='nvim'
export TERMINAL='kitty'
export BROWSER='firefox'
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_SCREENSHOTS_DIR="$HOME/downloads"
export PATH="/bin:/usr/bin:$HOME/.local/bin:$PATH"
export LC_ALL=en_US.UTF-8
export HISTSIZE=50
export HISTFILESIZE=50

. "$HOME/.cargo/env"
[[ $- != *i* ]] && return

# alias
alias grep='grep --color=auto'
alias firefox='firefox & disown'
alias xclip='xclip -selection clipboard'
alias ls='eza -T --icons --group-directories-first -I ".git" --git-ignore'
alias clear='printf "\033[3J\033[H\033[2J"'
alias discord='vesktop & disown'
alias yt='ytfzf'
alias woman='man'

# prompt
PS1='\n\[\033[01;32m\]\u@\h\[\033[00m\] : \[\033[01;35m\]\w\[\033[00m\] > '

# welcome!
echo "> welcome, $(whoami)!!"
echo "> today is $(shirecal)."
echo "> the moon is in $(moon-phases | awk '{print tolower($0)}') phase $(moon-phases --emoji)"
fortune pona | cowsay -f ~/.local/share/kisa.cow
