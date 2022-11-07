if status is-interactive
    # Commands to run in interactive sessions can go here
end

fish_add_path $HOME/.config/bin

set fish_greeting # disable greeting
set -x MANPAGER "sh -c 'col -bx | bat -l man -p'" # set man to use bat
set -gx PATH ~/.local/bin/ $PATH # set python PATH env
set -Ux fish_tmux_autoconnect true
set -U EDITOR nvim
set -Ux BAT_THEME ansi

# set alias
alias ls='exa -a --color=always --group-directories-first --icons' # all files and dirs
alias la='exa -al --color=always --group-directories-first --icons' # preferred listing
alias ip="ip -color"
alias hy='/home/rezikham/.local/bin/wrappedhl'
alias v='WINIT_UNIX_BACKEND=x11 neovide --multigrid'
alias vwl='neovide --multigrid'
alias vi=nvim
alias bat='bat --style header --style snip --style changes --style header'
alias grubup='sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias grep='grep --color=auto'
alias nv='nvidia-smi'
alias mp=ncmpcpp

# alias nand2tetris tools
alias n2thw=~/Documents/Deakin_Co/SIT111/nand2tetris/tools/HardwareSimulator.sh
alias n2tcpu=~/Documents/Deakin_Co/SIT111/nand2tetris/tools/CPUEmulator.sh
alias n2tass=~/Documents/Deakin_Co/SIT111/nand2tetris/tools/Assembler.sh
alias n2tvm=~/Documents/Deakin_Co/SIT111/nand2tetris/tools/VMEmulator.sh
alias n2tjc=~/Documents/Deakin_Co/SIT111/nand2tetris/tools/JackComiler.sh

# alias Deakin folders
alias 112='z ~/Documents/Deakin_Co/SIT112'
alias 111='z ~/Documents/Deakin_Co/SIT111'
alias 103='z ~/Documents/Deakin_Co/SIT103'

# alias conda/jupyter
alias condanav=anaconda-navigator

# alias backward cd
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'

# abbr general
abbr c clear
abbr cx 'chmod +x'
abbr rmd "rm -r"
abbr tr "tldr --list | fzf --header 'tldr (tealdeer)' --reverse --preview 'tldr {1}' --preview-window=right,80% | xargs tldr"

# abbr git command
abbr g 'git status'
abbr ga 'git add'
abbr gc 'git commit -m'
abbr gca 'git add .; git commit -m'
abbr gd 'git diff'
abbr gp 'git push'
abbr gl 'git pull'

# tmux shortcut
abbr tn "tmux new -s (pwd | sed 's/.*\///g')"
abbr ta "tmux a"
abbr tat "tmux attach -t"
abbr td 'tmux detach'

# abbreviation
abbr df 'sudo btrfs filesystem usage'
abbr dupe 'sudo duperemove -df'

# alias nvim config
abbr va "nvim ~/.config/alacritty/alacritty.yml"
abbr vf "nvim ~/.config/fish/config.fish"
abbr vt "nvim ~/.config/tmux/tmux.conf"
abbr vn "nvim ~/.config/nvim/"
abbr vnv "nvim ~/.config/nvim/lua/rezikham/core/neovide.lua"

# plugins
zoxide init fish | source
starship init fish | source
enable_transience

# change theme based on time
if test $(date +%H) -ge 18
  tokyonight_night
else if test $(date +%H) -ge 06 
  tokyonight_day
else if test $(date +%H) -ge 00
  tokyonight_night
end


bind -e \cj
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /home/rezikham/anaconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<
