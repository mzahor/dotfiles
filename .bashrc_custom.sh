# go development
export PATH=$PATH:/usr/local/go/bin
export GOPATH=/Users/mzahor/src/go
export PATH=$PATH:$GOPATH/bin

# python development
VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/src
source /usr/local/bin/virtualenvwrapper.sh

# git stuff
function make_pullrequest {
	if [ -z "$1" ]; then
		printf "specify branchname"
		return 1;
	fi
	BR=`git rev-parse --abbrev-ref HEAD`
	git diff HEAD..origin/master
	read -n1 -r -p "Press 'y' to continue...  " key;
	if [ "$key" = 'y' ]; then
    	git co -b "$1" && git push -u origin "$1" && git co "$BR";
	fi	
	# git br -d $1 #delete after successful request
}

# fbr - checkout git branch (including remote branches)
fbr() {
  local branches branch
  branches=$(git branch --all | grep -v HEAD) &&
  branch=$(echo "$branches" |
           fzf-tmux -d $(( 2 + $(wc -l <<< "$branches") )) +m) &&
  git checkout $(echo "$branch" | sed "s/.* //" | sed "s#remotes/[^/]*/##")
}

# fshow - git commit browser
fshow() {
  git log --graph --color=always \
      --format="%C(auto)%h%d %s %C(black)%C(bold)%cr" "$@" |
  fzf --ansi --no-sort --reverse --tiebreak=index --bind=ctrl-s:toggle-sort \
      --bind "ctrl-m:execute:
                (grep -o '[a-f0-9]\{7\}' | head -1 |
                xargs -I % sh -c 'git show --color=always % | less -R') << 'FZF-EOF'
                {}
FZF-EOF"
}

alias pr=make_pullrequest
alias gporigin="git push -u origin \`git rev-parse --abbrev-ref HEAD\`"

# playbuzz aliases
alias cdpb="cd ~/playbuzz"
alias cdplayer="cd ~/playbuzz/containers-client"
alias cdcreate="cd ~/playbuzz/containers-create-client"
alias runplayer="cdplayer && grunt server"
alias runcreate="cdcreate && grunt server"
alias buildall="cdplayer && grunt && cdcreate && grunt"
alias installall="cdplayer && npm i && bower i && cdcreate && npm i && bower i"
alias pullall="cdplayer && git pull && cd create && git pull"