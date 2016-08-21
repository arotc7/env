
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile 
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

if [ -f "/usr/local/etc/bash_completion" ]; then
  source /usr/local/etc/bash_completion
fi

export EDITOR=vim

export GOPATH=$HOME/work
export PATH=$PATH:$GOPATH/bin

export TWITTER_CONSUMER_KEY=
export TWITTER_CONSUMER_SECRET=
export TWITTER_ACCESS_TOKEN=
export TWITTER_ACCESS_SECRET=

export TWILIO_SID=
export TWILIO_SECRET=

export EMAIL_PASSWORD=

export GOENV="dev"
export STAGING_API=

PS1=1'\[\033[G\]\[\033[01;32m\]\w \[\033[00;33m\]$(__git_ps1 "(%s) ")\[\033[01;36m\]\$\[\033[00m\] '
