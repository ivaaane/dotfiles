source $HOME/.config/fish/functions/variables.fish
source $HOME/.config/fish/functions/alias.fish
source $HOME/.config/fish/functions/greeting.fish

function fish_prompt
	printf "\n%s@%s : %s %s> " \
		(set_color green)(whoami) (hostname) \
		(set_color yellow)(prompt_pwd) \
		(set_color normal)
end
