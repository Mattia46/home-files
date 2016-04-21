# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# currently liking: 'miloshadzic', 'blinks', 'smt', 'dogenpunk'
ZSH_THEME="af-magic"

# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias rake="noglob rake"

# Mac Helpers
alias show_hidden="defaults write com.apple.finder AppleShowAllFiles YES && killall Finder"
alias hide_hidden="defaults write com.apple.finder AppleShowAllFiles NO && killall Finder"

# SICP Racket Bullshit
alias racket="racket -i -p neil/sicp -l xrepl"

alias flounce='echo "I can'\''t work under these conditions" | lolcat; sleep 1; exit'
alias hissy_fit='echo "I can'\''t work under these conditions" | lolcat; sleep 1;sudo shutdown -h now'

#Mattia GitHub shortcut
alias add='git add .'
alias com='git commit -m'
alias gps='git push'
alias gpl='git pull'
alias sta='git status'
alias gck='git checkout'

#run Python server plus migrations:
alias runserver='./manage.py runserver 0.0.0.0:8000'
alias migrateserver='./manage.py makemigrations ; ./manage.py migrate ; ./manage.py runserver 0.0.0.0:8000'
alias pipmigrateserver='pip install -R requirements/common.txt ; ./manage.py makemigrations ; ./manage.py migrate ; ./manage.py runserver 0.0.0.0:8000'
alias ws3='source ~/Development/envs/ws3/bin/activate'
#
source ~/.env
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to disable command auto-correction.
# DISABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git osx tmux github fasd history-substring-search zsh-syntax-highlighting nyan)

export ZSH=~/.oh-my-zsh
source $ZSH/oh-my-zsh.sh
# User configuration

export PATH=$PATH:"/usr/local/bin:/usr/local/bin/git:/usr/local/heroku/bin:/Users/Mattia/.rvm/gems/ruby-2.2.3/bin:/Users/Mattia/.rvm/gems/ruby-2.2.3@global/bin:/Users/Mattia/.rvm/rubies/ruby-2.2.3/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/Users/Mattia/.rvm/bin"
# export MANPATH="/usr/local/man:$MANPATH"
# move /usr/local/bin/git: before /usr/bin:]
export MANPAGER="col -b | vim -c 'set ft=man ts=8 nomod nolist nonu' -c 'nnoremap i <nop>' -"

export EDITOR="/usr/bin/vim"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

alias cdh='cd ~/.homesick/repos/home-files/home'
alias hup='cdh && sh ~/.homesick/repos/home-files/commit.sh && source ~/.zshrc && cd - && clear'
alias chrome='open ~/../../Applications/Google\ Chrome.app'
alias spotify='open ~/../../Applications/Spotify.app'

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"
#############
#Secret passwor

#############
# FUNCTIONS
#############

function mygr8() {
bin/rake db:migrate
bin/rake db:migrate RAILS_ENV=test
}

mcd() { # creates a directory and places you in it
  mkdir -p $1
  cd $1
}

# Config for 'z': http://jilles.me/badassify-your-terminal-and-shell/
#source /usr/local/share/zsh/site-functions
alias s="~/chat.txt << "

alias rubes="ruby -run -ehttpd . -p8000"
alias roigrok="ngrok -subdomain=roi 8000"

bindkey -v


#alias v='NVIM_TUI_ENABLE_TRUE_COLOR=1 nvim'
#alias vim='NVIM_TUI_ENABLE_TRUE_COLOR=1 nvim'
source "$HOME/.vim/bundle/gruvbox/gruvbox_256palette.sh"
source ~/.oh-my-zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
. `brew --prefix`/etc/profile.d/z.sh

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

export ANDROID_HOME=/Users/mattia/Development/android-sdk-macosx
export ANDROID_HOME=/usr/local/opt/android-sdk
export PATH="$PATH:$(xcode-select --print-path)/usr/bin"

# The next line updates PATH for the Google Cloud SDK.
source '/Users/mattia/development/google-cloud-sdk/path.zsh.inc'

# The next line enables shell command completion for gcloud.
source '/Users/mattia/development/google-cloud-sdk/completion.zsh.inc'
