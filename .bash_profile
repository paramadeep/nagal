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
alias gshow='git show '
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
alias v='mvim -v'

export EDITOR=/usr/bin/vim

ulimit -n 65536
alias ftps='python -m SimpleHTTPServer 8000'

alias avdm='android avd'
export HISTTIMEFORMAT="%d/%m/%y %T "
export TEST_ENV=UAT
export ANDROID_HOME=/usr/local/Cellar/android-sdk/24.4.1_1
export ANDROID_NDK=~/work/app/android-ndk-r10e/

function mountAndroid { hdiutil attach ~/android.dmg.sparseimage -mountpoint /Volumes/android; }

##
# Your previous /Users/D/.bash_profile file was backed up as /Users/D/.bash_profile.macports-saved_2016-06-11_at_00:56:03
##

# MacPorts Installer addition on 2016-06-11_at_00:56:03: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.


test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# The next line updates PATH for the Google Cloud SDK.
if [ -f /Users/D/work/app/google-cloud-sdk/path.bash.inc ]; then
  source '/Users/D/work/app/google-cloud-sdk/path.bash.inc'
fi

# The next line enables shell command completion for gcloud.
if [ -f /Users/D/work/app/google-cloud-sdk/completion.bash.inc ]; then
  source '/Users/D/work/app/google-cloud-sdk/completion.bash.inc'
fi

export PROMPT_COMMAND='if [ "$(id -u)" -ne 0 ]; then echo "$(date "+%Y-%m-%d.%H:%M:%S") $(pwd) $(history 1)" >> ~/.logs/bash-history-$(date "+%Y-%m-%d").log; fi'
