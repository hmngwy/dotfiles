function gtree {
    git_ignore_file=$(pwd)/.gitignore
    ignore_files=$(cat $git_ignore_file ~/.gitignore | egrep -v "^#.*$|^[[:space:]]*$"  | sed 's/\**$//g' | sed 's/\/*$//g' | tr "\\n" "|" | sed 's/|*$//g')
    if [[ -f ${git_ignore_file} ]] ; then
        tree -I "$ignore_files" "${@}"
    else
        tree "${@}"
    fi
}
alias tree=gtree
