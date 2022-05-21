eval "$(/opt/homebrew/bin/brew shellenv)"
source /opt/homebrew/opt/asdf/libexec/asdf.sh
export KUBECONFIG=~/.kube/config/hhh-prd-kubeconfig.yaml

export PROMPT='[%D{%f/%m/%y} %D{%L:%M:%S}] %~: '
PROMPT='[%D{%f/%m/%y} %D{%L:%M:%S}] %~: '

alias vim=nvim
alias g=git
alias v=nvim

export PATH="/Users/carl/go/bin:$PATH"

### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="/Users/carl/.rd/bin:$PATH"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)
