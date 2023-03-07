if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Greeting message
function fish_greeting
	pfetch
	# neofetch
end

# Aliases
alias lt="exa --sort=ext --tree --icons"
alias ls="exa --sort=ext --icons"
alias la="exa --sort=ext --icons -a"
alias lla="exa --sort=ext --icons --sort=ext -al"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/n0t10n/miniconda3/bin/conda
    eval /home/n0t10n/miniconda3/bin/conda "shell.fish" "hook" $argv | source
end
# <<< conda initialize <<<

starship init fish | source
