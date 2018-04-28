eval "$(rbenv init -)"
#eval "$(boot2docker shellinit)"
export PATH=$PATH:/Users/D/work/app/android/build-tools/:/Users/D/work/app/android/tools/:/Users/D/work/app/android/tools/bin
export PATH=$PATH:/Users/D/work/app/logstash-1.5.0/bin/
export PATH=$PATH:/usr/local/openresty/nginx/sbin
export PATH=$PATH:/usr/local/sbin
export PATH=$PATH:/Users/D/work/app/multi-git
export PATH=$PATH:/Users/D/work/app/scripts
export PATH=$PATH:/Users/D/work/app/webdriver/
export PATH=$PATH:/usr/local/Cellar/mono/5.4.1.6/bin
export PATH=$PATH:/usr/local/Cellar/mono/5.4.1.6/bin
export PS1="\W$ "
export HITSIZE=5000
export HISTFILESIZE=5000

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
alias gph='git push --no-verify'
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
alias grp="gradle publish"
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

export HISTTIMEFORMAT="%d/%m/%y %T "
export TEST_ENV=UAT
export ANDROID_SDK_ROOT=/Users/D/work/android
export ANDROID_NDK=/Users/D/work/app/android-ndk-r10e
export ANDROID_HOME=/Users/D/work/app/android
export ANDROID_SDK=/Users/D/work/app/android
export ANDROID_SDK_HOME=/Users/D/work/app/android
export ANDROID_AVD_HOME=/Users/D/.android/avd

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

export PROMPT_COMMAND='if [ "$(id -u)" -ne 0 ]; then echo "$(pwd) $(history 1)" >> ~/.logs/bash-history-$(date "+%Y-%m-%d").log; fi'

# https://blog.fabric8.io/enable-bash-completion-for-kubernetes-with-kubectl-506bc89fe79e#.e9omcc37g
source <(kubectl completion bash)

export NAME=kube-prod.spicinemas.in
export KOPS_STATE_STORE=s3://spi-kubernetes-artifacts-prod

alias scheme="rlwrap -r -c -f ~/work/app/mit_scheme_bindings.txt scheme"

if [ -f /Users/D/.bash_sathyam ]; then
  source '/Users/D/.bash_sathyam'
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export CC=/usr/local/bin/gcc-4.8
export CFLAGS=-fobjc-exceptions
export CXX=/usr/local/bin/g++-4.8
export SA_LDFLAGS=-fobjc-exceptions

# https://medium.com/@crashybang/supercharge-vim-with-fzf-and-ripgrep-d4661fc853d2
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!{.git,node_modules}/*"'

  __my_fzf_history__() {
    awk '!($1=$2=$3=$4="")' ~/.logs/* | awk '!a[$0]++' | fzf --height 40% --reverse ;
  }

bind '"\C-r": " \C-e\C-u`__my_fzf_history__`\e\C-e\e^\er"'
export PATH="/usr/local/opt/elasticsearch@5.6/bin:$PATH"
