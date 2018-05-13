eval "$(rbenv init -)"
#eval "$(boot2docker shellinit)"
export PATH=$PATH:/usr/local/sbin
export PATH=$PATH:/Users/D/work/app/multi-git
export PATH=$PATH:/Users/D/work/app/scripts
export PATH=$PATH:/Users/D/work/app/webdriver/
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin
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
alias vi='mvim -v'

export EDITOR=/usr/bin/vim

alias ftps='python -m SimpleHTTPServer 8000'

export HISTTIMEFORMAT="%d/%m/%y %T "
export TEST_ENV=UAT
export ANDROID_SDK_ROOT=/Users/D/work/android
export ANDROID_NDK=/Users/D/work/app/android-ndk-r10e
export ANDROID_HOME=/Users/D/work/app/android
export ANDROID_SDK=/Users/D/work/app/android
export ANDROID_SDK_HOME=/Users/D/work/app/android
export ANDROID_AVD_HOME=/Users/D/.android/avd
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:/Users/D/work/app/android/platform-tools/

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

export PROMPT_COMMAND='if [ "$(id -u)" -ne 0 ]; then echo "$(pwd) $(history 1)" >> ~/.logs/bash-history-$(date "+%Y-%m-%d").log; fi'

alias scheme="rlwrap -r -c -f ~/work/app/mit_scheme_bindings.txt scheme"

#https://medium.com/@crashybang/supercharge-vim-with-fzf-and-ripgrep-d4661fc853d2
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!{.git,node_modules}/*"'

  my_fzf_history() {
    awk '!($1=$2=$3=$4="")' ~/.logs/* | awk '!a[$0]++'| sed -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$//' | fzf --height 40% --reverse ;
  }

#bind '"\C-r": " \C-e\C-u`my_fzf_history`\e\C-e\e^\er"'
#bind '"\C-r": "\C-x\C-addi`__my_fzf_history__`\C-x\C-e\C-x\C-r\C-x^\C-x\C-a$a"'
