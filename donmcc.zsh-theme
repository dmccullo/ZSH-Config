#local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"
# set prompt Path Structure

function collapse_pwd {
    echo $(pwd | sed -e "s,^$HOME,~,")
}

BAT_CHARGE=~/bin/BATCHARGE.py

function battery_charge {
    echo `$BAT_CHARGE` 2>/dev/null
}
# setup prompt
PROMPT='%{$FG[130]%}%n%{$reset_color%} %{$FG[111]%}at%{$reset_color%} %{$FG[130]%}%m%{$reset_color%}%{$FG[111]%} in $(collapse_pwd) $ '

RPROMPT='$(battery_charge)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
