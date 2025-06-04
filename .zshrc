### Adding PATHs
export PATH=$PATH:/home/lianna/.local/share/gem/ruby/3.4.0/bin
export PATH=$PATH:/home/lianna/.local/bin
export PATH=$PATH:/target/release/swww
export PATH=$PATH:/target/release/swww-daemon
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

### History Settings
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

# Load Modules? Autocomplete I think
autoload -U compinit && compinit

### Zsh Options
setopt autocd #go to a directory without typing cd
unsetopt beep #no error beeps
setopt append_history inc_append_history share_history #on exit, history appends; appended as soon as cmds executed; shared across sessions
setopt globdots # include dotfiles
setopt interactive_comments # allow comments ins shell
unsetopt prompt_sp # don't autoclean blanklines

# Completion Options
zstyle ':completion:*' menu select # tab opens cmp menu
zstyle ':completion:*' special-dirs true # force . and .. to show in cmp menu
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS} ma=0\;33 # colorize cmp menu

### Run Hyprland using uwsm once logged in upon startup
if uwsm check may-start; then
    exec uwsm start hyprland.desktop
fi

### Default Programs
export EDITOR="nvim"
export VISUAL="nvim"

### Aliases
alias vi="uwsm app -- nvim"
alias chr="uwsm app -- chromium &"
alias fir="uwsm app -- firefox &"
alias obs="uwsm app -- obsidian &"

### Activates Vi Mode (Vim modes switchable with escape key)
bindkey -v
export KEYTIMEOUT=1

### Run oh-my-posh with my config file (pretty prompt)
eval "$(oh-my-posh init zsh --config ~/.config/ohmyposh/ohmyposhconfig.json)"

### Syntax highlighting
source /home/lianna/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

### Setup for colorls (prettier ls)
source $(dirname $(gem which colorls))/tab_complete.sh #enables required tab completion for flags
alias lc='colorls'
