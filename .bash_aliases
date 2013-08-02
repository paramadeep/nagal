alias port='sudo netstat -tulpn'
alias proc='ps aux|grep '
alias fn='find -name'

#stop a sercive from startup
#sudo update-rc.d openerp disable

#start service
#/etc/init.d/<> start

export PS1='${debian_chgeroot:+($debian_chroot)}\W\[\033[01;31m\]$ \[\033[01;37m\]'

#openshift RedHat
alias rapp='rhc app'
alias rssh='rhc ssh'
alias rcar='rhc cartridge'
alias rtail='rhc tail'

#git
alias gad='git add'
alias gst='git status'
alias gcm='git commit -m'
alias gpl='git pull'
alias gph='git push'
alias gsh='git stash'
alias gsa='git stash apply'
