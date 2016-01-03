eval "$(rbenv init -)"
#eval "$(boot2docker shellinit)"
export PATH=$PATH:/Users/D/work/app/logstash-1.5.0/bin/
export PATH=$PATH:/usr/local/openresty/nginx/sbin
export PATH=$PATH:/usr/local/sbin
export PATH=$PATH:/Users/D/work/app/multi-git
export PS1="\W$ "
set completion-ignore-case on
#git
alias gad='git add --all'
alias gap='git add --all -p'
alias gst='git status'
alias gcm='git commit -m'
alias gcma='git commit -a -m'
alias gcaa='git commit -a --amend -m'
alias gca='git commit --amend '
alias gpl='git pull'
alias gplr='git pull --reb'
alias gph='git push'
alias gsh='git stash -u'
alias gsp='git stash pop'
alias gln='git log --name-status'
alias gl='git log '
alias ghis='git log --follow -p '
alias g='grep'
alias gdc='git diff --cached'
alias gdf='git diff'

alias grt="gradle test"
alias grb="gradle build"
alias grs="gradle shadowJar"
alias grbs="gradle build shadowJar"
alias grr="gradle run"
alias grm="gradle migrateUp"
alias grmt="gradle migrateUp -Penv=test"
alias grd="gradle migrateDown"
alias grdt="gradle migrateDown -Penv=test"
alias grn="gradle migrateNew"

alias e="exit"

alias dps='docker ps'
alias drun='docker run'
alias dkill='docker kill'
alias dlog='docker logs'
alias dbuild='docker build -t'
alias dimg='docker images'
alias drm='docker rm'
alias drmi='docker rmi -f'

alias b='bundle exec '
alias br='bundle exec rake '
alias bc='bundle exec cucumber '
alias bs='bundle exec rspec '
alias bu='bundle update '
alias bi='bundle install '
alias v='vim'

export EDITOR=/usr/bin/vim

ulimit -n 65536
alias ftps='python -m SimpleHTTPServer 8000'

alias avdm='android avd'
export HISTTIMEFORMAT="%d/%m/%y %T "
export TEST_ENV=UAT
export ANDROID_HOME=/usr/local/Cellar/android-sdk/24.4.1_1
