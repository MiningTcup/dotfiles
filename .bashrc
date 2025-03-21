#
# ~/.bashrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return
alias mkdir="mkdir -p"
alias cp="cp -r"
alias rm="rm -rf"
alias ls="ls --color"
alias ll="ls -l --color"
alias lh="ll -h"
alias code="codium --disable-gpu"
alias grep="grep --color=auto"
alias shutdown="shutdown now"
alias l="lsd"
alias q="hyprland"
alias reload="source ~/.bashrc"
alias update="yay -Syu --noconfirm && flatpak update --noninteractive"
alias uninstall="yay -Rns"
alias tkill="pkill --signal 9"
alias code="codium --disable-gpu"
alias click="theclicker run -d'/dev/input/event3' -l276 -r2751 -c25 -C0 -H --grab"
clear
tfetch
PS1='[\u@\h \W]\$ '
export PATH="$HOME/.cargo/bin:$PATH"
export PATH=~/.local/share/flatpak/exports/bin:$PATH
if [[ $TERM == "linux" || ! $(tput cols) ]]; then
    PS1='[\u@\h \W]\$ '
else
    export STARSHIP_CONFIG="$HOME/.config/starship.toml"
    eval "$(starship init bash)"
fi
# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export GDK_SCALE=1
export EDITOR=nvim
export VISUAL=nvim
# THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
. "$HOME/.local/bin/env"
