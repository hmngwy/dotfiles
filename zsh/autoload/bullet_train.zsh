# Bullet Train Theme Customization
BULLETTRAIN_TIME_SHOW=false
BULLETTRAIN_DIR_FG='black'
BULLETTRAIN_GIT_BG='250'
BULLETTRAIN_DIR_EXTENDED=0
BULLETTRAIN_VIRTUALENV_PREFIX=''

_seg_venv() {
  local virtualenv_path="$VIRTUAL_ENV"
  if [[ -n $virtualenv_path && -n $VIRTUAL_ENV_DISABLE_PROMPT ]]; then
    prompt_segment $BULLETTRAIN_VIRTUALENV_BG $BULLETTRAIN_VIRTUALENV_FG $1"$(basename $virtualenv_path)"
  elif which pyenv &> /dev/null; then
    prompt_segment $BULLETTRAIN_VIRTUALENV_BG $BULLETTRAIN_VIRTUALENV_FG $1"$(pyenv version | sed -e 's/ (set.*$//' | tr '\n' ' ' | sed 's/.$//')"
  fi
}

prompt_dirvenv() {
  if [[ $BULLETTRAIN_DIR_SHOW == false ]]; then
    return
  fi

  local dir=''
  local _context="$(context)"
  [[ $BULLETTRAIN_DIR_CONTEXT_SHOW == true && -n "$_context" ]] && dir="${dir}${_context}:"

  if [[ $BULLETTRAIN_DIR_EXTENDED == 0 ]]; then
    #short directories
    dir="${dir}%1~"
  elif [[ $BULLETTRAIN_DIR_EXTENDED == 2 ]]; then
    #long directories
    dir="${dir}%0~"
  else
    #medium directories (default case)
    dir="${dir}%4(c:...:)%3c"
  fi

  if [[ "$VIRTUAL_ENV" ]]; then
    local proj_home="~"
    if [ -f "$VIRTUAL_ENV/.project" ]; then
      proj_home=`cat $VIRTUAL_ENV/.project`
    fi
    local venv_name="$(basename $VIRTUAL_ENV)"
    local base_dir="$(basename $(pwd))"
    if [[ "$(pwd)" =~ "$proj_home" ]]; then
      _seg_venv "⌂ "
      if [ "$(pwd)" != "$proj_home" ]; then
        prompt_segment $BULLETTRAIN_DIR_BG $BULLETTRAIN_DIR_FG $dir
      fi
    else
      prompt_segment $BULLETTRAIN_DIR_BG $BULLETTRAIN_DIR_FG $dir
      _seg_venv
    fi
  else
      prompt_segment $BULLETTRAIN_DIR_BG $BULLETTRAIN_DIR_FG $dir
  fi
}

prompt_hostname() {
  prompt_segment black grey "@"
}

BULLETTRAIN_PROMPT_ORDER=(
  hostname
  dirvenv
  git
)
