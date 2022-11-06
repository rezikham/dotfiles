    # TokyoNight Color Palette
function tokyonight_day
    set -l foreground 3760bf
    set -l selection 99a7df
    set -l comment 848cb5
    set -l red f52a65
    set -l orange b15c00
    set -l yellow 8c6c3e
    set -l green 587539
    set -l purple 7847bd
    set -l cyan 007197
    set -l pink 9854f1

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
    tmux set -g mode-style "fg=#2e7de9,bg=#a8aecb"
    
    tmux set -g message-style "fg=#2e7de9,bg=#a8aecb"
    tmux set -g message-command-style "fg=#2e7de9,bg=#a8aecb"
    
    tmux set -g pane-border-style "fg=#a8aecb"
    tmux set -g pane-active-border-style "fg=#2e7de9"
    
    tmux set -g status "on"
    tmux set -g status-justify "left"
    
    tmux set -g status-style "fg=#2e7de9,bg=#e9e9ec"
    
    tmux set -g status-left-length "100"
    tmux set -g status-right-length "100"
    
    tmux set -g status-left-style NONE
    tmux set -g status-right-style NONE
    
    tmux set -g status-left "#[fg=#e9e9ed,bg=#2e7de9,bold] #S #[fg=#2e7de9,bg=#e9e9ec,nobold,nounderscore,noitalics]"
    tmux set -g status-right "#[fg=#e9e9ec,bg=#e9e9ec,nobold,nounderscore,noitalics]#[fg=#2e7de9,bg=#e9e9ec] #{prefix_highlight} #[fg=#a8aecb,bg=#e9e9ec,nobold,nounderscore,noitalics]#[fg=#2e7de9,bg=#a8aecb] %Y-%m-%d  %I:%M %p #[fg=#2e7de9,bg=#a8aecb,nobold,nounderscore,noitalics]#[fg=#e9e9ed,bg=#2e7de9,bold] #h "
    
    tmux setw -g window-status-activity-style "underscore,fg=#6172b0,bg=#e9e9ec"
    tmux setw -g window-status-separator ""
    tmux setw -g window-status-style "NONE,fg=#6172b0,bg=#e9e9ec"
    tmux setw -g window-status-format "#[fg=#e9e9ec,bg=#e9e9ec,nobold,nounderscore,noitalics]#[default] #I  #W #F #[fg=#e9e9ec,bg=#e9e9ec,nobold,nounderscore,noitalics]"
    tmux setw -g window-status-current-format "#[fg=#e9e9ec,bg=#a8aecb,nobold,nounderscore,noitalics]#[fg=#2e7de9,bg=#a8aecb,bold] #I  #W #F #[fg=#a8aecb,bg=#e9e9ec,nobold,nounderscore,noitalics]"
    
    # tmux-plugins/tmux-prefix-highlight support
    tmux set -g @prefix_highlight_output_prefix "#[fg=#8c6c3e]#[bg=#e9e9ec]#[fg=#e9e9ec]#[bg=#8c6c3e]"
    tmux set -g @prefix_highlight_output_suffix ""
end
