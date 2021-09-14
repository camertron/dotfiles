export PATH=$HOME/bin:/usr/local/bin:/usr/local/sbin:$PATH
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`

alias w='cd /Users/camertron/workspace'
alias bx='bundle exec'
alias dc='docker-compose'
alias kc='kubectl'
alias ll='ls -lhA'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias reset_dns='sudo killall -HUP mDNSResponder'

function gpl() {
  git pull origin $(git symbolic-ref HEAD)
}

function gph() {
  git push origin $(git symbolic-ref HEAD)
}

function headsha() {
  h=$(git rev-parse HEAD)
  echo ${h::8}
}

function docker-rmi() {
  docker rmi -f $(docker images -a -q)
}

function endor() {
  wine ~/.wine/drive_c/Program\ Files\ \(x86\)/STARWARS_TheBattleOfEndor_v21/STARWARS_TheBattleOfEndor_v21.exe
}
