    # TokyoNight Color Palette
function tokyonight_night
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

    # Syntax Highlighting Colors
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

    # Completion Pager Colors
    set -g fish_pager_color_progress $comment
    set -g fish_pager_color_prefix $cyan
    set -g fish_pager_color_completion $foreground
    set -g fish_pager_color_description $comment
    set -g fish_pager_color_selected_background --background=$selection

    # Tmux Theme Change
    tmux set -g mode-style "fg=#7aa2f7,bg=#3b4261"
     
    tmux set -g message-style "fg=#7aa2f7,bg=#3b4261"
    tmux set -g message-command-style "fg=#7aa2f7,bg=#3b4261"
    
    tmux set -g pane-border-style "fg=#3b4261"
    tmux set -g pane-active-border-style "fg=#7aa2f7"
    
    tmux set -g status "on"
    tmux set -g status-justify "left"
    
    tmux set -g status-style "fg=#7aa2f7,bg=#16161e"
    
    tmux set -g status-left-length "100"
    tmux set -g status-right-length "100"
    
    tmux set -g status-left-style NONE
    tmux set -g status-right-style NONE
    
    tmux set -g status-left "#[fg=#15161e,bg=#7aa2f7,bold] #S #[fg=#7aa2f7,bg=#16161e,nobold,nounderscore,noitalics]"
    tmux set -g status-right "#[fg=#16161e,bg=#16161e,nobold,nounderscore,noitalics]#[fg=#7aa2f7,bg=#16161e] #{prefix_highlight} #[fg=#3b4261,bg=#16161e,nobold,nounderscore,noitalics]#[fg=#7aa2f7,bg=#3b4261] %Y-%m-%d  %I:%M %p #[fg=#7aa2f7,bg=#3b4261,nobold,nounderscore,noitalics]#[fg=#15161e,bg=#7aa2f7,bold] #h "
    
    tmux setw -g window-status-activity-style "underscore,fg=#a9b1d6,bg=#16161e"
    tmux setw -g window-status-separator ""
    tmux setw -g window-status-style "NONE,fg=#a9b1d6,bg=#16161e"
    tmux setw -g window-status-format "#[fg=#16161e,bg=#16161e,nobold,nounderscore,noitalics]#[default] #I  #W #F #[fg=#16161e,bg=#16161e,nobold,nounderscore,noitalics]"
    tmux setw -g window-status-current-format "#[fg=#16161e,bg=#3b4261,nobold,nounderscore,noitalics]#[fg=#7aa2f7,bg=#3b4261,bold] #I  #W #F #[fg=#3b4261,bg=#16161e,nobold,nounderscore,noitalics]"
    
    # tmux-plugins/tmux-prefix-highlight support
    tmux set -g @prefix_highlight_output_prefix "#[fg=#e0af68]#[bg=#16161e]#[fg=#16161e]#[bg=#e0af68]"
    tmux set -g @prefix_highlight_output_suffix ""
end
