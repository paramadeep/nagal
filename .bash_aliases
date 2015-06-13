alias port='sudo netstat -tulpn'
alias proc='ps aux|grep '
alias fn='find -name'

#stop a sercive from startup
#sudo update-rc.d openerp disable

#start service
#/etc/init.d/<> start

export PS1='\[\033[33;1m\]\w\[\033[m\]\$ '
#export PS1='${debian_chgeroot:+($debian_chroot)}\W\[\033[01;31m\]$ \[\033[01;37m\]'

#openshift RedHat
alias rapp='rhc app'
alias rssh='rhc ssh'
alias rcar='rhc cartridge'
alias rtail='rhc tail'

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


alias b='bundle exec '
alias br='bundle exec rake '
alias bc='bundle exec cucumber '
alias bu='bundle update '
alias bi='bundle install '
alias v='vim '
alias t='tmux '
#for pam
export RAILS_ENV=poisol

#vim
export EDITOR=/usr/bin/vim

#ftp
alias ftps='python -m SimpleHTTPServer 8000'

export PATH=$PATH:/home/d/work/nagal/git-plus

export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="/home/d/work/app/node/bin/:$PATH"
export PATH="/home/d/work/app/android/tools/:$PATH"
export PATH="/home/d/work/app/android/platform-tools/:$PATH"
export PATH="/home/d/bin/:$PATH"
export PATH="$GRADLE_HOME/bin:$PATH"
eval "$(rbenv init -)"

#bundle config jobs 7
#sed -i -e 's/x/y/g' *.txt
#
#tmux 
export HISTCONTROL=ignoreboth

# Load pyenv automatically by adding
#export PATH="$HOME/.pyenv/bin:$PATH"
#eval "$(pyenv init -)"
#eval "$(pyenv virtualenv-init -)"

