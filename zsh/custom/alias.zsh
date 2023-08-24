# ------------------------------------
# Files
# ------------------------------------
alias ls='ls -FG'
alias l='ls'
alias sl='ls'
alias ll='ls -lh'
alias la='ls -a'
alias lla='ls -al'
alias lf='ls -F | grep -v / --color=none'
alias ldir='ls -F | grep / --color=none'
alias llag='ls -al | grep'
alias cp='cp -v'
alias mv='mv -v'
alias rm='rm -v'
alias rmf='rm -rf'
alias untar='tar zxvf'
alias file-count='find . -type f | wc -l'

# ------------------------------------
# Directories
# ------------------------------------
alias md='mkdir -p'
alias dirs='dirs -v'
alias d='dirs -v | head -10'
alias crtdir='basename `pwd`'

# ------------------------------------
# System
# ------------------------------------
alias relogin='exec $SHELL -l'

# ------------------------------------
# Helpers
# ------------------------------------
alias grep='grep --color'
alias iso8601-jst='date +%Y-%m-%dT%H:%M:%S%z'
alias iso8601-uct='date -u +"%Y-%m-%dT%H:%M:%SZ"'

# ------------------------------------
# Network
# ------------------------------------
# IP addresses
alias global-ip='curl -s ifconfig.io'
alias local-ip='ipconfig getifaddr en0'
alias ping='ping -c 4'
ipinfo() {
  echo -n 'local-ip: '
  ipconfig getifaddr en0
  echo -n 'global-ip: '
  curl -s ipinfo.io
}

# HTTP Server
alias py3-server='python3 -m http.server 8000'
alias rb-server='ruby -run -e httpd . -p 8000'
alias php-server='php -S 0.0.0.0:8000'

# ------------------------------------
# Applications
# ------------------------------------
alias chrome='/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome'
alias chrome-incognito='chrome --incognito'

# ------------------------------------
# Homebrew
# ------------------------------------
# alias brews='brew list'
alias bl='brew list'
alias blp='brew list --pinned'
alias bln='brew link'
alias bup='brew update'
alias bupg='brew upgrade'
alias bc='brew cleanup'
alias bd='brew doctor'
alias bs='brew search'
alias bi='brew install'
alias buni='brew uninstall'
alias bh='brew help'
# brew-cask
alias bcl='brew cask list'
alias bci='brew cask install'
alias bcrei='brew cask reinstall'
alias bcd='brew cask doctor'
alias bch='brew cask help'
# Show all alias related brew
balias() {
  alias | grep 'brew' | sed "s/^\([^=]*\)=\(.*\)/\1 => \2/" | sed "s/['|\']//g";
}

# ------------------------------------
# Python
# ------------------------------------
# pipenv
alias ppython='pipenv run python'
alias pprun='pipenv run'
alias ppi='pipenv install'
alias ppi='pipenv run pip list'
# pytest
alias pytest-cov='pytest -v --cov --cov-report=html && open htmlcov/index.html'
# pip
alias pip-all-uninstall='pip freeze | xargs pip uninstall -y'

# # ------------------------------------
# # Android
# # ------------------------------------
# ANDROID_SDK="$HOME/Library/Android/sdk"
# ANDROID_TOOLS="$ANDROID_SDK/tools"
# ANDROID_BIN="$ANDROID_TOOLS/bin"
#
# alias android=$ANDROID_TOOLS/android
# alias emulator=$ANDROID_TOOLS/emulator
# alias avdmanager=$ANDROID_BIN/avdmanager
# alias sdkmanager=$ANDROID_BIN/sdkmanager

# ------------------------------------
# Docker alias and function
# see: https://github.com/tcnksm/docker-alias/blob/master/zshrc
# ------------------------------------
# alias d="docker"
# Get latest container ID
alias dl='docker ps -l -q'
# Get container process
alias dps='docker ps'
# Get process included stop container
alias dpa='docker ps -a'
# Get images
alias di='docker images'
# Get images including intermediates
alias dia='docker images -a'
# Get container IP
alias dip='docker inspect --format '{{ .NetworkSettings.IPAddress }}''
# Run deamonized container, e.g., $dkd base /bin/echo hello
alias dkd='docker run -d -P'
# Run interactive container, e.g., $dki base /bin/bash
alias dki='docker run -i -t -P'
# Execute interactive container, e.g., $dex base /bin/bash
alias dex='docker exec -i -t'
# Stop all containers
alias dstop='docker stop $(docker ps -a -q)'
# Remove all containers
alias drm='docker rm $(docker ps -a -q)'
# Stop and Remove all containers
alias drmf='docker stop $(docker ps -a -q) && docker rm -f $(docker ps -a -q)'
# Remove all images
alias dri='docker rmi -f $(docker images -q)'
# Remove all containers and images by force
alias dclean='docker kill $(docker ps --all --quiet); drm; drmi;'
# Get volumes
alias dvl='docker volume list'
# Remove all volumes
alias dvrm='docker volume rm $(docker volume list -q)'

# Show all alias related docker
dalias() {
  alias | grep 'docker' | sed "s/^\([^=]*\)=\(.*\)/\1 => \2/" | sed "s/['|\']//g";
}

# ------------------------------------
# Docker compose alias and function
# see: https://gist.github.com/maxcnunes/7b5eae9cb884f126a70f#file-alias-docker-compose-sh
# ------------------------------------
alias dc='docker-compose'
alias dcb='docker-compose build'
alias dcup='docker-compose up'
alias dcr='docker-compose run'
alias dcps='docker-compose ps'
alias dclogs='docker-compose logs'
alias dcdown='docker-compose down'
alias dcstart='docker-compose start'
alias dcstop='docker-compose stop'

dcrm() {
	docker-compose stop $1
	docker-compose rm --force $1
}

# ------------------------------------
# Docker machine alias and function
# ------------------------------------
alias dm='docker-machine'
alias dmcv='docker-machine create --driver virtualbox'
alias dmstop='docker-machine stop'
alias dml='docker-machine ls'
alias dmst='docker-machine status'
alias dmssh='docker-machine ssh'
alias dmrm='docker-machine rm'
alias dmrc='docker-machine regenerate-certs'
alias dmip='docker-machine ip'

dmstart() {
  docker-machine start $1
  dmenv $1
}
dmenv() {
  eval $(docker-machine env $1)
}

# ------------------------------------
# Kubernetes alias and function
# see: https://gist.github.com/tamas-molnar/32a07c0eb83e95484e3cdb4b7fada32b
# ------------------------------------
alias kc='kubectl'
alias kcl='kubectl logs'
alias kclf='kubectl logs -f'
alias kcgp='kubectl get pod -o wide'
alias kcgn='kubectl get node -o wide'
alias kcgd='kubectl get deployment -o wide'
alias kcgs='kubectl get service -o wide'
alias kcgi='kubectl get ingress -o wide'
alias kcdp='kubectl describe pod'
alias kcdd='kubectl describe deployment'
alias kcds='kubectl describe service'
alias kcdi='kubectl describe ingress'
alias kcc='kubectl create'
alias kccf='kubectl create -f'
alias kcaf='kubectl apply -f'
alias kcd='kubectl delete'
alias kcdf='kubectl delete -f'
alias kcp='kubectl proxy'
alias kcci='kubectl cluster-info'

kcex() {
  kubectl exec -it $1 /bin/bash
}
kcpodname() {
  echo $(kubectl get pods -o go-template --template '{{range .items}}{{.metadata.name}}{{"\n"}}{{end}}')
}
# Used to kill a pod now!
kcdk() {
  kubectl delete pod $1 --grace-period=0 --force
}
# Used to re-create a resource
kcr() {
  kubectl delete -f $1
  kubectl create -f $1
}
kcalias() {
  alias | grep 'kubectl' | sed "s/^\([^=]*\)=\(.*\)/\1 => \2/" | sed "s/['|\']//g";
}

# ------------------------------------
# minikube alias
# ------------------------------------
# alias mk='minikube'
#
# mkenv() {
#   eval $(minikube docker-env)
# }
