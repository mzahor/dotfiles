alias gporigin="git push -u origin \`git rev-parse --abbrev-ref HEAD\`"
alias g=git
alias dcp="docker compose"
alias tf=terraform
alias tunprod="ssh -L 5434:10.1.0.179:5432 -N res"
alias tunprodres="ssh -L 5435:10.1.0.169:5432 -N res"
alias tunstg="ssh -L 5444:10.1.0.24:5432 -N stgres"
alias restartjfin="ssh mbox \"cd /home/nvmz00/server && docker compose restart jellyfin\""
