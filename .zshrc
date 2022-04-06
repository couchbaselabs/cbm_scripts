cd ..
# pre 210930
# ~/.nvm/versions/node/v12.18.0/bin:/Library/Frameworks/Python.framework/Versions/3.9/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/go/bin:/usr/local/share/dotnet:~/.dotnet/tools:/Library/Apple/usr/bin:/Library/Frameworks/Mono.framework/Versions/Current/Commands:~/.nvm/versions/node/v12.18.0/bin:/Library/Frameworks/Python.framework/Versions/3.9/bin:/usr/local/bin/maven-3.6.3/bin:/Applications:~/CouchbaseDev/test-clang/cbl:/usr/local/bin/maven-3.6.3/bin:/Applications:~/CouchbaseDev/test-clang/cbl

# # If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:~/.nvm/versions/node/v12.18.0/bin:/Library/Frameworks/Python.framework/Versions/3.9/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/go/bin:/usr/local/share/dotnet:~/.dotnet/tools:/Library/Apple/usr/bin:/Library/Frameworks/Mono.framework/Versions/Current/Commands:/usr/local/bin/maven-3.6.3/bin:/Applications:~/CouchbaseDev/test-clang/cbl

# export PYTHONPATH=/Library/Frameworks/Python.framework/Versions/3.9/lib/python3.9/site-packages/

# Path to your oh-my-zsh installation.
# export ZSH="~/.oh-my-zsh"
export ZSH="/Users/ianbridge/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


echo "Starting with global attributes (vn:0x1/20191129-1)"
echo "---------------------------------------------------"

# Global Variables


export CouchbaseDocs="~/CouchbaseDocs"
export CbDocs="~/CouchbaseDocs"
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_231.jdk/Contents/Home
# export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-13.0.1.jdk/Contents/Home
export JDK_HOME=$JAVA_HOME
export LIVERELOAD=true
export GOPATH=$HOME/GO
export JIRA_USERNAME=''
export JIRA_PASSWORD=''
export MAVEN_HOME=/usr/local/bin/maven-3.6.3
export PYTHON_PATH=/Library/Frameworks/Python.framework/Versions/3.9
# Tomcat paths
export CATALINA_HOME=/Library/Tomcat
export CATALINA_BASE=/Library/Tomcat

pyenv --version

# export PATH="$HOME/.pyenv/bin:$PATH"
# eval "$(pyenv init -)"
# eval "$(pyenv virtualenv-init -)"



# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:~/.nvm/versions/node/v12.18.0/bin:$PYTHON_PATH/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/go/bin:/usr/local/share/dotnet:~/.dotnet/tools:/Library/Apple/usr/bin:/Library/Frameworks/Mono.framework/Versions/Current/Commands:$MAVEN_HOME/bin
export PATH=$HOME/bin:~/.nvm/versions/node/v12.18.0/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/go/bin:/usr/local/share/dotnet:~/.dotnet/tools:/Library/Apple/usr/bin:/Library/Frameworks/Mono.framework/Versions/Current/Commands:$MAVEN_HOME/bin:~/.pyenv/versions/3.10.0:$HOME/.pyenv/bin:/Users/ianbridge/CouchbaseDocs/bau/mobilescripts/dist
# /Applications:~/CouchbaseDev/test-clang/cbl
# echo $PATH
pyenv --version

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

pyenv --version

# Global aliases
alias cdhm="cd ~/"
alias cdCourse="cd ~/CouchbaseDev/sandbox/CourseWork/cb215-mobile; pwd"
alias cdsandbox="cd ~/CouchbaseDev/sandbox; pwd"
alias cddev="cd ~/CouchbaseDev/cblDev; pwd"
alias cddocs="cd ~/CouchbaseDocs; pwd"
alias cdtuts="cd ~/CouchbaseTutorials; pwd"
alias cdtutsbau="cd ~/CouchbaseTutorials/bau; pwd"
alias cddocbau="cd ~/CouchbaseDocs/bau; pwd"
alias cdsgw="cd ~/CouchbaseDocs/bau/sgw; pwd"
alias cdcbl="cd ~/CouchbaseDocs/bau/cbl; pwd"
alias cdsite="cd ~/CouchbaseDocs/bau/site; pwd"
alias cdui="cd ~/CouchbaseDocs/bau/ui; pwd"
alias cdtut="cd ~/CouchbaseDocs/mobtut; pwd"
alias cdgitpgs="cd ~/CouchbaseDocs/ibsoln.github.io; pwd"
alias atomizeZsh="open ~/.zshrc -a atom"

alias awsreldocs="s3cmd ls s3://docs.couchbase.com/mobile/2.7.0/couchbase-lite-net/api -r"
alias recycle="exec zsh"

# DOCKER ALIASES
alias dockimgls="docker image ls"
alias dockcont"docker ps"
alias docktcatrun="docker run -it --rm -p 8888:8080 tomcat"
alias docktcatbash="docker exec -it 6ccb269d2341 /bin/bash"

# Couchbase aliases
alias sgStart="/Applications/couchbase-sync-gateway/bin/sync_gateway ~/Documents/couchbase/sync-gateway-config.json"

alias sgTest="/Applications/couchbase-sync-gateway/bin/sync_gateway /
~/CouchbaseDev/testing/sync-gateway-config.json"

# Antora aliases
alias pubgitpgs="cdsite;antora --pull --clean --stacktrace github-antora-playbook-myStaging.yml"
alias pushgitpgs="cdgitpgs; git add *; git commit -m 'update github staging';git push"

# working with jars
alias jarList="jar -xvf "
alias jarRun="java -jar "

# Gradle
export GRADLE_USER_HOME=~/.gradle

# Tomcat Aliases
alias cdTcatBin="cd "$CATALINA_HOME"/bin"
alias tcatRun="./bin/jsvc \
    -classpath $CATALINA_HOME/bin/bootstrap.jar:$CATALINA_HOME/bin/tomcat-juli.jar \
    -outfile $CATALINA_BASE/logs/catalina.out \
    -errfile $CATALINA_BASE/logs/catalina.err \
    -Dcatalina.home=$CATALINA_HOME \
    -Dcatalina.base=$CATALINA_BASE \
    -Djava.util.logging.manager=org.apache.juli.ClassLoaderLogManager \
    -Djava.util.logging.config.file=$CATALINA_BASE/conf/logging.properties \
    org.apache.catalina.startup.Bootstrap"

# Typo aliases
alias gti="git"
alias gitpubpgs="pubgitpgs"
alias cd../="cd ../"
alias atomise="atomize"



# Functions


collateAndroidJakSnippets() {
  cddocs
  cd bau/cbl/
  cd modules/android/examples
  adoc_collateJavaKotlinSnippets
}
alias coljaksnips=collateAndroidJakSnippets

generateStaticApiPages() {
  cddocs
  cd bau/sgw
  cd modules/ROOT/assets/s2adoc
  mvn generate-sources
}
alias genStaticApi=generateStaticApiPages
alias genstaticapi=generateStaticApiPages

generateSgDataModels() {
  cddocs
  cd bau/sgw
  cd modules/ROOT/assets/attachments
  adoc_yaml_parser
}
alias genSgData=generateSgDataModels
alias gensgdata=generateSgDataModels

generateLocalDocs() {
  collateAndroidJakSnippets
  generateSgDataModels
  generateStaticApiPages
  cddocs
  cd bau/site
  gulp
}
alias genDocs=generateLocalDocs
alias gendocs=generateLocalDocs


setDocBase() {
  export docPath="~/CouchbaseDocs/"
  cd $docPath$1
}

runTcat() {
  cdTcatBin
  ./catalina.sh stop
  ./catalina.sh start
}


gitRebaseUpstream() {
#  echo $# parameters provided
# use m for masterr, s for staging, x.x for release/x.x and 300, feature 300
  echo num pars = $#
  if [ $# -eq 0 ]
  then
    echo "undefined release number"
  else
    if [ $# = 1 ]
    then

      case "$1" in
        "m" )
          lbranch="master"
          ;;
        "s" )
          lbranch="staging"
          ;;
        "sb" )
          lbranch="sandbox"
          ;;
        *)
          lbranch="release/"$1
      esac
    else
      lbranch=$1"/"$2
    fi
    echo "Processing " $lbranch
    git checkout $lbranch
    git fetch upstream $lbranch
    git rebase upstream/$lbranch
  fi
}
alias gRebUp="gitRebaseUpstream"
alias grebup="gitRebaseUpstream"


gitUpdateBranch() {
    git fetch upstream release/$1
    git rebase upstream/release/$1
}
alias gUpdBr="gitUpdateBranch"
alias gupdbr=gUpdBr

gitPushToOrigin() {
#  echo $# parameters provided
  if [ $# -lt 2 ]
  then
    echo "undefined branch and-or release number"
  else
    git checkout $1 # Get the updated branch
    git fetch upstream release/$2
    git rebase upstream/release/$2
    git push origin $1
  fi
}
alias gPush="gitPushToOrigin"
alias gpush=gPush


gitArchiveBranch() {
  # trap -
  if [ $# -eq 0 ]
  then
    echo "You haven't defined a branch-name"
  else
    git tag -d archive/$1 # remove any prior tag version (e.g. created in error/replaced)
    echo '0-' $?
    # trap return ZERR

    git tag archive/$1 $1
    echo '1-' $?
.
    git push origin --tags
    echo '2-' $?

    git push origin -f :$1
    echo '3-' $?

    if [  $? -eq 0 ]
    then
      gitRemoveBranch $1
      echo '4-' $?
    else
      echo 'Archive failed. Branch not deleted!!'
    fi
  fi
}
alias gArcBr="gitArchiveBranch"
alias garcbr="gArcBr"


gitRemoveBranch() {
  if [ $# -eq 0 ]
    then
      echo "undefined branch-name and repository"
    else
      if [ $# -ge 1 ]
        then
          thisBranch=$1
          if [ $# -eq 2 ]
            then
              thisRepo=$2
            else
              thisRepo="origin"
          fi
      fi
      git branch -D $thisBranch
#      git branch -d -r $thisRepo/$thisBranch
  fi
}
alias gRmvBr="gitRemoveBranch"
alias grmvbr="gitRemoveBranch"

gtarArchiveBranch() {
    if [ $# -eq 0 ]
    then
      echo "undefined branch-name"
    else
      git archive $1 -o archive/$1.tar --format tar
    fi
}
alias gtarbr="gtarArchiveBranch"



gitGenerateStaging() {
  echo $# params are $1 ... and $2
  originalDir=$PWD
  pbroot="myPlaybook-"
  mydocs=$pbroot"stage.yml"
  mydocs-origin=$pbroot"origin.yml"
  mydocsbeta=$pbroot"beta.yml"
  mywire=$pbroot"wire.yml"
  mylocal=$pbroot"local.yml"
  wireframebeta="apostrophe01"
  beta="-b"
  stage="-s"
  stagingRoot="ibsoln.github.io"
  stageroot="stage"
  betaroot="betasites"
  stagingDir="~/CouchbaseDocs/"$stagingRoot
  stagingUrl="https://"$stagingRoot

  if [ "$#" -ge "1" ]
  then
    if  [ $1 = $beta ]
    then
        stagingDir=$stagingDir"/"$betaroot
        stagingUrl=$stagingUrl"/"$betaroot
        src=$mydocsbeta
      else
        stagingDir=$stagingDir"/"$stageroot
        stagingUrl=$stagingUrl"/"$stageroot
        src=$mydocs
    fi
    dir="--to-dir="$stagingDir"/"$2
    url="--url="$stagingUrl"/"$2

    # echo $pbroot ... $mydocs
    echo "Using: " $src
    echo "Creating: " $url " site"
    echo "In directory: " $dir
    pwd
    cddocs && cd bau/site
    antora generate --fetch --clean --stacktrace $3 $dir $url $src
    gitPublishStaging $2
    cd $originalDir
    echo "Used: " $src
    echo "Created: " $url " site"
    echo "In directory: " $dir
  else
    echo "error"
  fi
}
alias gGenStg="gitGenerateStaging"
alias ggenstg="gitGenerateStaging"

gitPublishStaging () {
  if [ $# -eq 0 ]
  then
      echo "undefined branch name"
  else
    cdgitpgs
    git add *
    git commit -m $1
    git push origin -f
  fi
}
alias gPubStg="gitPublishStaging"
alias gpubstg="gitPublishStaging"

gitBranchesByDate () {
  git for-each-ref --sort='-authordate:iso8601' --format=' %(authordate:relative)%09%(refname:short)' refs/heads
}
alias gBrByDt="gitBranchesByDate"
alias gbrbydt="gitBranchesByDate"

restartSG() {
cdhm
cd CouchbaseDev
thisDir=$1
$thisDir/sync-gateway-home/couchbase-sync-gateway/bin/sync_gateway $thisDir/sync-gateway-home/sync-gateway-config.json
}

restartSyncGatewayService() {

pushed documents that conflicted
sudo ./sync_gateway_service_uninstall.sh

sudo ./sync_gateway_service_install.sh --runas=sync_gateway --cfgpath=~/CouchbaseDev/staging/sync-gateway-home/sync-gateway-config.json --logsdir=~/CouchbaseDev/staging/sync-gateway-home/sgLogs/

}


compileSass() {
  sass src/scss/panes.scss src/css/panes.css
}
alias csass="compileSass"

vsc() {

  vscode = "visual studio code"
  if [ $# -eq 0 ]
    then
        echo "Opening folder:" && pwd
        open ./ -a 'visual studio code'
  else
      if [ $1 = "zsh" ]
      then
        echo "Opening:  ~/.zshrc"
        open ~/.zshrc -a 'visual studio code'
      else
        echo "Opening: " $1
        open $1 -a 'visual studio code'
      fi
  fi
}


atomize() {
  if [ -n $1]
    then
        echo "Using:  ~/.zshrc"
        open ~/.zshrc -a atom
    else
        echo "Using: " $1
        open $1 -a atom
    fi
}


crtProjJava() {
  mkdir $1
  cd $1
  gradle init
  mkdir src
  mkdir src/java
  mkdir src/java/Main
  mkdir src/main
  mkdir src/main/java
  mkdir src/main/webapp
  mkdir src/main/java/com
  mkdir src/main/java/com/couchbase
  mkdir src/main/java/com/couchbase/gsProject
  mkdir libs
  mkdir libs/libJSTL
  mkdir libs/libJAVAEE
  mkdir libs/libCBL
  mkdir libs/libTomcat
  mkdir web
  mkdir WEB-INF
}

#
# END OF FILE
#if [ /usr/local/bin/kubectl ]; then source <(kubectl completion zsh); fi

export NVM_DIR="~/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm



# Control python environment == see: https://opensource.com/article/19/5/python-3-default-mac
# echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.zshrc

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
