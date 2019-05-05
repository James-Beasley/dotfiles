set fish_color_normal         brwhite
set fish_color_command        brwhite
set fish_color_quote          green
set fish_color_redirection    blue
set fish_color_end            brwhite
set fish_color_error          red
set fish_color_param          brwhite
set fish_color_comment        white
set fish_color_match          brwhite
set fish_color_selection      white
set fish_color_search_match   brwhite
set fish_color_operator       brwhite
set fish_color_escape         cyan
set fish_color_cwd            brwhite
set fish_color_autosuggestion white
set fish_color_user           brwhite
set fish_color_host           brwhite
set fish_color_cancel         red

set -Ux fish_greeting
set -Ux EDITOR vim
set -Ux BROWSER firefox

function fish_prompt
    set_color $fish_color_user
    echo -n $USER
    set_color $fish_color_normal
    echo -n " "
    set_color $fish_color_cwd
    echo -n $PWD
    set_color $fish_color_normal
    echo -n " > "
end

alias config-i3="$EDITOR ~/.config/i3/config"
alias config-bar="$EDITOR ~/.config/i3/bar"
alias config-fish="$EDITOR ~/.config/fish/config.fish"
alias config-x="$EDITOR ~/.Xresources"
