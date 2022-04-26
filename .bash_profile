export VISUAL=vim
export EDITOR="$VISUAL"

LS_COLORS="ow=01;36;40" && export LS_COLORS

# leetcode create
mklc() {
	dirname=$(echo $1 | tr '-' '_')
	curr_num=`cat current_problem.txt`
	echo "Creating directory for problem #$curr_num."
	mkdir -p $dirname; cd $dirname; touch $curr_num_$dirname.rb
	expr $curr_num + 1 > ../current_problem.txt
}

alias gpall="git add -u && git commit -m '[wip]' && git push"
alias gpall="git rev-parse --abbrev-ref HEAD"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
source /Users/joshuachang/.rvm/scripts/rvm

