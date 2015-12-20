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

alias pr=make_pullrequest
alias pbr="git push -u origin \`git rev-parse --abbrev-ref HEAD\`"