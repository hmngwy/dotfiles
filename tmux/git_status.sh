# + changes are staged and ready to commit
# ! unstaged changes are present
# ? untracked files are present
# S changes have been stashed
# P local commits need to be pushed to the remote
statu="$(git status --porcelain 2>/dev/null)"
output=''
[[ -n $(egrep '^[MADRC]' <<<"$statu") ]] && output="$output+"
[[ -n $(egrep '^.[MD]' <<<"$statu") ]] && output="$output!"
[[ -n $(egrep '^\?\?' <<<"$statu") ]] && output="$output?"
[[ -n $(git stash list) ]] && output="${output}S"
[[ -n $(git log --branches --not --remotes) ]] && output="${output}⬆"
[[ -n $output ]] && output="$output"  # separate from branch name
echo "#[fg=colour15,bg=colour88,bold] $output #[fg=colour88,bg=colour3,nobold,nounderscore,noitalics]"
