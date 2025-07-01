if status is-interactive
    # Commands to run in interactive sessions can go here
end

alias ls="lsd"
alias la="lsd -la"
alias ll="lsd -l"
alias npm="pnpm"

bind \cw forward-word
bind \cb backward-word
bind \ca forward-char

set -g fish_greeting ""

starship init fish | source
zoxide init fish | source

turbofetch

set -g PATH $HOME/.cargo/bin $PATH
set -g PATH $HOME/go/bin $PATH
