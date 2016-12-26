alias php='/usr/local/bin/php'
export MAMP_PHP=/Applications/MAMP/bin/php/php5.5.10/bin
export PATH="$MAMP_PHP:$PATH"
export PATH=/user/local/bin:$PATH
alias artisan='php artisan'
alias phpunit='vendor/bin/phpunit'
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
alias restartDropBox="osascript -e 'tell application \"Dropbox\" to quit';killall Dropbox;open -a \"Dropbox\""

export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='gls -GFalh --color --group-directories-first'

 #added by Anaconda3 2.3.0 installer
export PATH="/Users/leterhaar/anaconda/bin:$PATH"

alias fix_brew='sudo chown -R $USER /usr/local/'
alias bashprofile='vim ~/.bash_profile'
alias pdflatex='/Library/TeX/Distributions/.DefaultTeX/Contents/Programs/texbin/pdflatex'
alias latex='pdflatex'
alias xelatex='/Library/TeX/Distributions/.DefaultTeX/Contents/Programs/texbin/xelatex'
alias cdafstuderen='cd ~/Dropbox/TU/Afstuderen/Ole'
alias cdlit='cd ~/Dropbox/TU/Afstuderen/Ole/tex/literature_survey/report'
alias vim='/usr/local/bin/vim'
export SVN_EDITOR=vim

alias py27='source activate py27'
alias clc='clear'
function ka(){

    cnt=$( p $1 | wc -l)

    echo -e "\nSearching for '$1' -- Found" $cnt "Running Processes .. "
    p $1

    echo -e '\nTerminating' $cnt 'processes .. '
    ps aux  |  grep -i $1 |  grep -v grep   | awk '{print $2}' | xargs sudo kill -9
    echo -e "Done!\n"

    echo "Running search again:"
    p "$1"
    echo -e "\n"
}
# FIND PROCESS
function p(){
    ps aux | grep -i $1 | grep -v grep
}

# commit all
function GitCommitAll(){
    git add .
    git commit -a
}
alias gca='GitCommitAll'

function svnci() {
    rake svn:add
    rake svn:delete
    svn ci
}

# I add some comment here
