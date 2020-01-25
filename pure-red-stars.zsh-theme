# Pure Red Stars

# Only display host if this is via SSH
if [[ -n $SSH_CONNECTION ]]; then
  sshing="%m "
else
  sshing=""
fi

# Fish shell-like prompt
_fishy_collapsed_wd() {
  echo $(pwd | perl -pe '
   BEGIN {
      binmode STDIN,  ":encoding(UTF-8)";
      binmode STDOUT, ":encoding(UTF-8)";
   }; s|^$ENV{HOME}|~|g; s|/([^/.])[^/]*(?=/)|/$1|g; s|/\.([^/])[^/]*(?=/)|/.$1|g
')
}

_parse_git_dirty() {
  local STATUS
  local -a FLAGS
  FLAGS=('--porcelain' '--ignore-submodules=dirty')
  if [[ "$(command git config --get oh-my-zsh.hide-dirty)" != "1" ]]; then
    if [[ "$DISABLE_UNTRACKED_FILES_DIRTY" == "true" ]]; then
      FLAGS+='--untracked-files=no'
    fi
    STATUS=$(command git status ${FLAGS} 2> /dev/null | tail -n1)
  fi
  if [[ -n $STATUS ]]; then
    echo "$ZSH_THEME_GIT_PROMPT_DIRTY"
  else
    echo "$ZSH_THEME_GIT_PROMPT_CLEAN"
  fi
}

_git_prompt_short_sha() {
  local SHA
  SHA=$(command git rev-parse --short HEAD 2> /dev/null) && echo "$ZSH_THEME_GIT_PROMPT_SHA_BEFORE$SHA$ZSH_THEME_GIT_PROMPT_SHA_AFTER"
}

# Git prompt values
ZSH_THEME_GIT_PROMPT_PREFIX=""
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY="%F{red}✶✶%f"
ZSH_THEME_GIT_PROMPT_CLEAN=""

# Format for git_prompt_long_sha() and git_prompt_short_sha()
ZSH_THEME_GIT_PROMPT_SHA_BEFORE=" %F{white}[%F{yellow}"
ZSH_THEME_GIT_PROMPT_SHA_AFTER="%F{white}]"

# prompt turns red if the previous command didn't exit with 0
PROMPT=' %(?.%F{blue}.%F{red})❯% %(?.%F{yellow}.%F{red})❯%(?.%F{green}.%F{red})❯%f '
RPROMPT='%F{blue}$(_fishy_collapsed_wd)%  $(_parse_git_dirty)$(_git_prompt_short_sha) %F{green}$(git rev-parse --abbrev-ref HEAD 2> /dev/null) %F{magenta}$sshing%'
