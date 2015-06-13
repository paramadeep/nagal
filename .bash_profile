#eval "$(rbenv init -)"
eval "$(boot2docker shellinit)"
export PATH=$PATH:~/work/app/android-sdk-macosx/platforms/:~/work/app/android-sdk-macosx/tools/:/Users/D/work/app/logstash-1.5.0/bin/
export PATH=$PATH:/usr/local/openresty/nginx/sbin
export PATH=$PATH:/usr/local/sbin
export PATH=~/work/app/node/bin:$PATH
export PS1="\W$ "
set completion-ignore-case on
#git
alias gad='git add --all'
alias gst='git status'
alias gcm='git commit -m'
alias gcma='git commit -a -m'
alias gcaa='git commit -a --amend -m'
alias gca='git commit --amend -m'
alias gpl='git pull'
alias gplr='git pull --reb'
alias gph='git push'
alias gsh='git stash -f'
alias gsp='git stash pop'
alias gln='git log --name-status'
alias gl='git log '
alias g='grep'


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
alias v='/usr/local/Cellar/vim/7.4.488/bin/vim'

export EDITOR=/usr/bin/vim

ulimit -n 65536
alias ftps='python -m SimpleHTTPServer 8000'

alias avdm='android avd'
