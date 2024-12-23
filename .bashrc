#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias unxz='xz -d'
alias ungz='gzip -d'
alias unbz2='bzip2 -d'
alias untar='tar -xvf'
alias unzipall='unzip'

alias makexz='xz -z'
alias makegz='gzip'
alias makebz2='bzip2'
alias maketar='tar -cvf'
alias makezip='zip'

alias mkdir="mkdir -p"
alias cp="cp -r"
alias rm="rm -rf"
alias ls='ls --color'
alias ll='ls -l --color'
alias lh='ll -h'
alias code="codium"
alias grep='grep --color=auto'

pfetch

PS1='[\u@\h \W]\$ '

export PATH="$HOME/.cargo/bin:$PATH"
export PATH=~/.local/share/flatpak/exports/bin:$PATH

eval "$(starship init bash)"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
