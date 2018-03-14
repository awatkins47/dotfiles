set -x DOTFILES ~/dotfiles
set -x FZF_DEFAULT_COMMAND 'fd --type f --follow --hidden --exclude .git'
set -x FZF_CTRL_T_COMMAND $FZF_DEFAULT_COMMAND

# source private variables if exist
set -x PRIVATE_VARIABLES_FILE "$DOTFILES/fish/private_variables.fish"
test -e "$PRIVATE_VARIABLES_FILE"; and source $PRIVATE_VARIABLES_FILE
