# TokyoNight Color Palette {{{
set -l foreground c0caf5
set -l selection 33467c
set -l comment 565f89
set -l red f7768e
set -l orange ff9e64
set -l yellow e0af68
set -l green 9ece6a
set -l purple 9d7cd8
set -l cyan 7dcfff
set -l pink bb9af7
# }}}
# Syntax Highlighting Colors {{{
set -g fish_color_normal $foreground
set -g fish_color_command $cyan
set -g fish_color_keyword $pink
set -g fish_color_quote $yellow
set -g fish_color_redirection $foreground
set -g fish_color_end $orange
set -g fish_color_error $red
set -g fish_color_param $purple
set -g fish_color_comment $comment
set -g fish_color_selection --background=$selection
set -g fish_color_search_match --background=$selection
set -g fish_color_operator $green
set -g fish_color_escape $pink
set -g fish_color_autosuggestion $comment
# }}}
# Completion Pager Colors {{{
set -g fish_pager_color_progress $comment
set -g fish_pager_color_prefix $cyan
set -g fish_pager_color_completion $foreground
set -g fish_pager_color_description $comment
set -g fish_pager_color_selected_background --background=$selection
# }}}

# Alias.
alias md=mkdir
alias v=nvim
alias vinit='v ~/.config/nvim/init.lua'
alias tinit='v ~/.tmux.conf'
alias st='tmux source ~/.tmux.conf'
alias finit='v ~/.config/fish/config.fish'
alias sf='source ~/.config/fish/config.fish'
alias lla='ls -a -l'
alias t='tmux new-session -A -s 0'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias vimdiff='nvim -d'

# Remove default Fish greeting.
set fish_greeting

fish_add_path $HOME/.cargo/bin

if test -e ~/.config/op/plugins.sh
  source ~/.config/op/plugins.sh
end
