# path
export PATH=${HOME}/bin/:${HOME}/.local/bin:${PATH}

# applications
export EDITOR='nvim'
export TERMINAL='kitty'
export BROWSER='firefox'


# history limit
export HISTSIZE=50
export HISTFILESIZE=50

# idk
. "$HOME/.cargo/env"
[[ $- != *i* ]] && return

# alias
alias grep='grep --color=auto'
alias firefox='firefox & disown'
alias xclip='xclip -selection clipboard'
alias ls='eza -T --icons --group-directories-first -I ".git" --git-ignore'
alias clear='printf "\033[3J\033[H\033[2J"'
alias discord='vesktop & disown'
alias woman='man'

# prompt
PS1='\n\[\033[01;32m\]\u@\h\[\033[00m\] : \[\033[01;35m\]\w\[\033[00m\] > '

# welcome!
echo "> welcome, $(whoami)!!"
echo "> today is $(shirecal)."
echo "> the moon is in $(moon-phases | awk '{print tolower($0)}') phase $(moon-phases --emoji)"
fortune pona | cowsay -f ~/.local/share/kisa.cow
