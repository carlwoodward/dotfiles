eval "$(/opt/homebrew/bin/brew shellenv)"
source /opt/homebrew/opt/asdf/libexec/asdf.sh
export KUBECONFIG=~/.kube/config/hhh-prd-kubeconfig.yaml

export PROMPT='[%D{%f/%m/%y} %D{%L:%M:%S}] %~: '
PROMPT='[%D{%f/%m/%y} %D{%L:%M:%S}] %~: '

alias vim=nvim
