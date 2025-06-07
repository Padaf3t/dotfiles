#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='eza --color=always --group-directories-first --icons'
alias ll='eza -l --git --icons'
alias lt='eza --tree --level=2 --icons'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
