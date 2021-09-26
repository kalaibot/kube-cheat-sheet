export al='--all-namespaces'
export ks='-n=kube-system'
alias clr='clear'

# KUBECTL

alias k='kubectl'
alias kg='kubectl get'
alias kgp='kubectl get pods'
alias kgs='kubectl get svc'
alias kgd='kubectl get deploy'
alias kgsa='kubectl get sa'
alias kgse='kubectl get secrets'
alias kgrs='kubectl get rs'
alias kcgc='kubectl config get-contexts'
alias kcuc='kubectl config use-context'
alias kccc='kubectl config current-context'
alias kcsc='kubectl config set-context'
alias kgn='kubectl get nodes'
alias ke='kubectl exec -it'
alias kdp='kubectl describe pod'
alias kdn='kubectl describe node'
alias klf='kubectl logs -f'
alias kde='kubectl delete'
alias kd='kubectl describe'
alias kaf='kubectl apply -f'
alias spot='kubectl get nodes -l kubernetes.io/lifecycle=spot'
alias demand='kubectl get nodes -l kubernetes.io/lifecycle=ondemand'

# GIT
alias gbr='git branch -r'
alias gbv='git branch -v'
alias gbd='git branch -D'
alias gch='git checkout'
alias gco='git commit -m'
alias gcl='git clone'
alias gs='git status'
alias grv='git remote -v'
alias gp='git pull'
alias gd='git diff'
alias gpu='git push'

#DOCKER
alias di='docker images'
alias dp='docker ps -a'

#KUBERNETES
tok() {
  kubectl -n kube-system get secret -o jsonpath='{.data.token}' $(kubectl -n kube-system get secret | grep "eks-admin-token" | awk '{print $1}') | base64 -D -;
}
