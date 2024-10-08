function fish_greeting
	echo "> welcome, $(whoami)!!"
	echo "> today is $(shirecal)."
	echo "> the moon is in $(moon-phases | awk '{print tolower($0)}') phase $(moon-phases --emoji)"
	fortune pona | cowsay -f ~/.local/share/kisa.cow
end
