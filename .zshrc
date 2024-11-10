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
export RPROMPT='%t'
export CLICOLOR=1
export LSCOLORS=gafacadabaegedabagacad
export VISUAL=nvim
export EDITOR="$VISUAL"
source ~/.config/zsh/plugins/ssh-agent.zsh
alias evpn="sudo openconnect --no-dtls -b -u robert.piringiu vpn.emag.ro"
