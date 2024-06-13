export PATH=$HOME/bin:/usr/local/bin:/usr/local/sbin

alias w='cd /Users/camertron/workspace'
alias bx='bundle exec'
alias dc='docker-compose'
alias kc='kubectl'
alias ll='ls -lhA'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias reset_dns='sudo killall -HUP mDNSResponder'

alias helm=$(ASDF_RUBY_VERSION=3.0.2 ruby -e "require 'helm-rb'; puts HelmRb.executable")

function gpl() {
  git pull origin $(git symbolic-ref HEAD)
}

function gph() {
  git push origin $(git symbolic-ref HEAD)
}

function headsha() {
  h=$(git rev-parse HEAD)
  echo $h | tr -d '\n' | pbcopy
  echo $h
}

function headshaa() {
  h=$(git rev-parse HEAD)
  echo ${h::8} | tr -d '\n' | pbcopy
  echo ${h::8}
}

function docker-rmi() {
  docker rmi -f $(docker images -a -q)
}

function endor() {
  wine ~/.wine/drive_c/Program\ Files\ \(x86\)/STARWARS_TheBattleOfEndor_v21/STARWARS_TheBattleOfEndor_v21.exe
}

function ibc() {
  ruby ~/.bash_profile_includes/interactive_branch_cleaner.rb
}

function wdavkill() {
  for ((;;)) { ps aux | grep wdavdaemon | grep -v grep | tr -s ' ' | cut -d' ' -f 2 | xargs sudo kill; }
}
