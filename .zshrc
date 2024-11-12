# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/robert/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
autoload -U colors && colors
setopt prompt_subst
autoload -Uz vcs_info
zstyle ':vcs_info:*' actionformats \
    ' %F{5}[%F{2}%b%F{3}|%F{1}%a%F{5}]%f'
zstyle ':vcs_info:*' formats       \
    ' %F{5}[%F{2}%b%F{5}]%f'
zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat '%b%F{1}:%F{3}%r'

zstyle ':vcs_info:*' enable git cvs svn

# or use pre_cmd, see man zshcontrib
vcs_info_wrapper() {
  vcs_info
  if [ -n "$vcs_info_msg_0_" ]; then
    echo "%{$fg[grey]%}${vcs_info_msg_0_}%{$reset_color%}$del"
  fi
}
# export PS1="%F{214}%m%F{015}:%F{039}%~%F{015}\$ "
export PS1='%F{#f95b23}%n%f:%F{yellow}%~%f$(vcs_info_wrapper) $ '
export RPROMPT='%T'
export CLICOLOR=1
export LSCOLORS=gafacadabaegedabagacad
export VISUAL=nvim
export EDITOR="$VISUAL"

source ~/.config/zsh/plugins/ssh.zsh
source ~/.config/zsh/plugins/keychain.zsh
source ~/.config/zsh/plugins/ssh-agent.zsh
source ~/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
alias evpn="sudo openconnect --no-dtls -b -u robert.piringiu vpn.emag.ro"
# SPACESHIP_PROMPT_ASYNC=false
# SPACESHIP_PROMPT_ADD_NEWLINE=false
# # SPACESHIP_PROMPT_SEPARATE_LINE=false
# # SPACESHIP_CHAR_SYMBOL=❯
# # SPACESHIP_CHAR_SUFFIX=" "
# SPACESHIP_HG_SHOW=false
# SPACESHIP_PACKAGE_SHOW=false
# SPACESHIP_NODE_SHOW=false
# SPACESHIP_RUBY_SHOW=false
# SPACESHIP_ELM_SHOW=false
# SPACESHIP_ELIXIR_SHOW=false
# SPACESHIP_XCODE_SHOW_LOCAL=false
# SPACESHIP_SWIFT_SHOW_LOCAL=false
# SPACESHIP_GOLANG_SHOW=false
# SPACESHIP_PHP_SHOW=false
# SPACESHIP_RUST_SHOW=false
# SPACESHIP_JULIA_SHOW=false
# SPACESHIP_DOCKER_SHOW=false
# SPACESHIP_DOCKER_CONTEXT_SHOW=false
# SPACESHIP_AWS_SHOW=false
# SPACESHIP_CONDA_SHOW=false
# SPACESHIP_VENV_SHOW=false
# SPACESHIP_PYTHON_SHOW=false
# SPACESHIP_DOTNET_SHOW=false
# SPACESHIP_EMBER_SHOW=false
# SPACESHIP_KUBECTL_CONTEXT_SHOW=false
# SPACESHIP_TERRAFORM_SHOW=false
# SPACESHIP_TERRAFORM_SHOW=false
# SPACESHIP_VI_MODE_SHOW=false
# SPACESHIP_JOBS_SHOW=false
#
# source ~/.config/zsh/spaceship/spaceship.zsh
