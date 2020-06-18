export PATH=$HOME/bin:/usr/local/bin:/usr/local/sbin:$PATH
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`

alias w='cd /Users/cdutro/workspace'
alias bx='bundle exec'
alias dc='docker-compose'
alias kc='kubectl'
alias ll='ls -lhA'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias reset_dns='sudo killall -HUP mDNSResponder'
alias kc='/Users/cdutro/.asdf/installs/ruby/2.5.8/lib/ruby/gems/2.5.0/gems/kubectl-rb-0.1.0-x86_64-darwin/vendor/kubectl'
alias kubectl='/Users/cdutro/.asdf/installs/ruby/2.5.8/lib/ruby/gems/2.5.0/gems/kubectl-rb-0.1.0-x86_64-darwin/vendor/kubectl'
alias helm='/Users/cdutro/.asdf/installs/ruby/2.5.8/lib/ruby/gems/2.5.0/gems/helm-rb-0.1.0-x86_64-darwin/vendor/helm'

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
