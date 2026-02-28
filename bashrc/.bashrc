# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
  PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
  for rc in ~/.bashrc.d/*; do
    if [ -f "$rc" ]; then
      . "$rc"
    fi
  done
fi
unset rc
eval "$(~/.local/bin/mise activate bash)"
eval "$(mise completion bash --include-bash-completion-lib)"
source ~/.local/share/bash-completion/completions/mise
eval "$(starship init bash)"

alias v="nvim"
alias vi="nvim"
alias vim="nvim"
alias ll="ls -la"
alias cat="bat"
alias l="ls -lh --color=auto --group-directories-first"
alias ls="ls -h --color=auto --group-directories-first"
alias la="ls -lah --color=auto --group-directories-first"
alias c=clear
alias grep="grep --color=auto"
alias free="free -h | bat -l cpuinfo -p"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
