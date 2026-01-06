# Auto Complete
autoload bashcompinit && bashcompinit
autoload -Uz compinit
compinit
#source <(kubectl completion zsh)
complete -C '/usr/local/bin/aws_completer' aws

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

export CARAPACE_BRIDGES='zsh,fish,bash,inshellisense' # optional
zstyle ':completion:*' menu select format $'\e[2;37mCompleting %d\e[m'
source <(carapace _carapace)

alias ff="aerospace list-windows --all | fzf --bind 'enter:execute(bash -c \"aerospace focus --window-id {1}\")+abort'"
