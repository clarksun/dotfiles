alias ku='kubectl'
alias kug='kubectl get'
alias kud='kubectl describe'
alias ktx='kubectx'

alias kube-whereami='kubectl config current-context'

# load shell completions
# # using 'antigen bundle kubectl' in top-level .zshrc instead
#if [[ -n "$ZSH_VERSION" ]]; then
#    source <(kubectl completion zsh)
#fi
alias kube-completions='source <(kubectl completion zsh)'

if [[ -n "$BASH_VERSION" ]]; then
    source <(kubectl completion bash)
fi
