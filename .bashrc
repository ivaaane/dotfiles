# variables
export PATH=${HOME}/bin/:${HOME}/.local/bin:${PATH}
export EDITOR='nvim'
export HISTSIZE=50
export HISTFILESIZE=50
. "$HOME/.cargo/env"
[[ $- != *i* ]] && return

# alias
alias grep='grep --color=auto'
alias firefox='firefox & disown'
alias xclip='xclip -selection clipboard'
alias woman='man'
alias ls='eza -T --icons --group-directories-first -I ".git" --git-ignore'
alias clear='printf "\033[3J\033[H\033[2J"'
alias discord='vesktop & disown'

# prompt
PS1='\n\[\033[01;32m\]\u@\h\[\033[00m\] : \[\033[01;35m\]\w\[\033[00m\] > '

# welcome!
echo "> welcome, $(whoami)!!"
echo "> today is $(shirecal)."
echo "> the moon is in $(moon-phases) phase $(moon-phases --emoji)"
fortune pona | cowsay -f ~/tests/kisa.cow
