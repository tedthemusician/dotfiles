# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/Ted/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

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
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
  export EDITOR='vim'
# else
  export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# - - - - - - - ALIASES - - - - - - - 

# Directory changes
alias docprog='cd ~/Documents/Programming'
alias doclive='cd ~/Documents/Native\ Live\ Sets/Live\ 10'
alias docsite='cd ~/Documents/site'
alias docsongs='cd ~/Documents/Songs'
alias sc='cd ~/Documents/scratch'

# Bash (?)
alias lsd='ls -da1 */' # List directories only

# FTP/SSH
alias ton='echo "u38678890-term" | pbcopy'
alias vimton='echo "e scp://u38678890-term@tedoliver.net/" | pbcopy && mvim'
alias vimpi='echo "e scp://pi@192.168.1.71/" | pbcopy && mvim'
alias ftpton='lftp u38678890-term@home134770133.1and1-data.host'
alias sshton='ssh u38678890@home134770133.1and1-data.host'
alias sshpi='ssh pi@70.250.114.115'
alias sshlin='ssh ted@50.116.34.78'

# Fixes
alias tree='tree -I node_modules'
alias v='nvim'

# Haskell
alias ghc='stack ghc'
alias ghci='stack ghci'
alias runghc='stack runghc'
alias bills='~/Documents/Programming/Haskell/bills/bills'
alias cc='~/Documents/Programming/Haskell/cc/cc'

# Kotlin
alias ks='kotlinc -script'

# Python (all weather)
alias python='python3'
alias weather='python3 ~/Documents/Programming/Python/weather/current.py'
alias forecasth='python3 ~/Documents/Programming/Python/weather/hourly.py'
alias forecast10='python3 ~/Documents/Programming/Python/weather/ten_day_numeric.py'
alias forecast10g='python3 ~/Documents/Programming/Python/weather/ten_day_num_graph.py'
alias forecast10x='python3 ~/Documents/Programming/Python/weather/ten_day_text.py'
alias weight='python3 ~/Documents/Programming/Python/fitness/add_weight.py'
alias weightcsv='python3 ~/Documents/Programming/Python/fitness/make_csv.py'
alias pyserver='python3 -m http.server'
alias py='python3'

# Ruby
alias game='ruby ~/Documents/Programming/Ruby/weather/game.rb'
alias rhyme='ruby ~/Documents/Programming/Ruby/rhymebrain.rb'
alias syns='ruby ~/Documents/Programming/Ruby/thesaurus.rb'
alias timer='ruby ~/Documents/Programming/Ruby/timer.rb'

# Misc utilities
alias cmon='sudo !!'
alias findmy='python3 ~/Documents/Programming/Python/moving.py'
alias g='rg'
alias journal='entry'
alias l='ls -AThop'
alias pingas='ping -c 10 8.8.8.8'
alias pbclear='echo -n "" | pbcopy'
alias unsafechrome='/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --disable-web-security'

# Pretty much unused
alias swift='/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/swift'
alias llp='~/llppublish.sh'

# Silly
alias :x='echo "Does this look like vim to you?"'
alias :w='echo "Does this look like vim to you?"'
alias :q='echo "Does this look like vim or GHCi to you?"'

# - - - - - - END ALIASES - - - - - -

# - - - - - CUSTOM FUNCTIONS - - - - -

# Change and print working directory
cwd () {
    cd $1
    pwd
}

dfe () {
    echo -n "" | pbcopy
    # TODO: zsh history
    > .bash_history
    > .viminfo
    history -c
}

# Create new journal entry under current date; open it in Vim
entry () {
    echo "" >> "/Users/Ted/Documents/scratch/journal.txt"
    date >> "/Users/Ted/Documents/scratch/journal.txt"
    nvim "/Users/Ted/Documents/scratch/journal.txt"
}

# Print last read page of Haskell Book, open Haskell Book, and prompt closing page
alias haskellbook='open ~/Documents/Misc/Haskell\ Programming\ From\ First\ Principles.pdf && prog haskell && cd learning/firstPrinciples'

html () {
    template_root=/Users/Ted/Documents/site/templates
    cp "$template_root/index.html" .
    cp "$template_root/stylesheet.css" .
    cp "$template_root/main.js" .
}

kcr () {
    kotlinc $1.kt -include-runtime -d $1.jar && java -jar $1.jar
}

kjar () {
    java -jar "$@"
}

# Make and enter directory
mkcd () {
    mkdir $1
    cd $1
}

prog () {
    cd ~/Documents/Programming
    cd $1
}

# Get current weather conditions, hourly forecast, and 10-day forecast with graph
weatherfull () {
    if [ $# -eq 0 ]; then
        weather raleigh nc
        forecasth raleigh nc
        forecast10g raleigh nc
    else
        weather $@
        forecasth $@
        forecast10g $@
    fi
}

weatherless () {
    weatherfull $@ | less
}

saw () {
    ext=$(diskutil list | fgrep 'External HD' | grep -o 'disk\ds\d');
    backup=$(diskutil list | fgrep 'Backup HD' | grep -o 'disk\ds\d');
    diskutil unmount $ext;
    diskutil unmount $backup;
}

rest () {
    saw
    exit
}

scaf () {
    if [[ -d $1 ]]; then
        echo "Directory \`$1\` already exists."
        return 1
    fi
    mkdir $1
    cd $1
    cp ~/.resources/scaffold.html index.html
    touch stylesheet.css
    touch main.js
}

nano () {
    echo "Fuck you. Learn vi."
}

# - - - - END CUSTOM FUNCTIONS - - - -

# Personal config
unsetopt histverify

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
# TODO: need these?
# PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH="/Users/Ted/.local/bin:$PATH"

export PATH="/usr/local/bin:$PATH"
