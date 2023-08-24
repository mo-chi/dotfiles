# ---------------------------------------------------------
# utility
# @see
#   https://qiita.com/takc923/items/c479e38112b913b7614a
#   https://qiita.com/maangie/items/2ac2e26a39a0d2d9cc79
# ---------------------------------------------------------
str_with_color() {
  echo "%{$fg[$1]%}$2%{$reset_color%}"
}

ph() {
  local prompt_descriptions=(
    $ZSH_THEME_GIT_PROMPT_ADDED 'added\t追加されたファイルがある'
    $ZSH_THEME_GIT_PROMPT_MODIFIED 'modified\t変更されたファイルがある'
    $ZSH_THEME_GIT_PROMPT_DELETED 'deleted\t削除されたファイルがある'
    $ZSH_THEME_GIT_PROMPT_RENAMED 'renamed\tファイル名が変更されたファイルがある'
    $ZSH_THEME_GIT_PROMPT_UNMERGED 'unmerged\tマージされていないファイルがある'
    $ZSH_THEME_GIT_PROMPT_UNTRACKED 'untracked\tトラックされていないファイルがある'
    # $ZSH_THEME_GIT_PROMPT_AHEAD 'ahead\tmaster リポジトリよりコミットが進んでいる'
    # $ZSH_THEME_GIT_PROMPT_BEHIND 'behind\tmaster リポジトリよりコミットが遅れている'
    # $ZSH_THEME_GIT_PROMPT_DIRTY 'dirty\tclean でない'
    # $ZSH_THEME_GIT_PROMPT_CLEAN 'clean'
  )

  local i
  for ((i = 1; i <= $#prompt_descriptions; i += 2)); do
    local p=$prompt_descriptions[$i]
    local d=$prompt_descriptions[$i+1]
    echo `echo $p | sed -E 's/%.| //g'` $reset_color $d
  done
}

# ---------------------------------------------------------
# user setting
# ---------------------------------------------------------
local user=$(str_with_color red '%n@%m:')

# ---------------------------------------------------------
# directory setting
# ---------------------------------------------------------
local pwd=$(str_with_color cyan '%~')

# ---------------------------------------------------------
# git setting
# ---------------------------------------------------------
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[green]%})%{$reset_color%}"

ZSH_THEME_GIT_PROMPT_ADDED=$(str_with_color green '✚ ')
ZSH_THEME_GIT_PROMPT_MODIFIED=$(str_with_color blue '✹ ')
ZSH_THEME_GIT_PROMPT_DELETED=$(str_with_color red '✖ ')
ZSH_THEME_GIT_PROMPT_RENAMED=$(str_with_color magenta '➜ ')
ZSH_THEME_GIT_PROMPT_UNMERGED=$(str_with_color yellow '═ ')
ZSH_THEME_GIT_PROMPT_UNTRACKED=$(str_with_color cyan '✭ ')
# ZSH_THEME_GIT_PROMPT_AHEAD=$(str_with_color cyan '▲ ')
# ZSH_THEME_GIT_PROMPT_BEHIND=$(str_with_color magenta '▼ ')
ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_CLEAN=""

local git_status='$(git_prompt_status)%{$reset_color%}'
local git_branch='$(git_prompt_info)%{$reset_color%}'
local git="${git_branch} ${git_status}"

# ---------------------------------------------------------
# prompt setting
# ---------------------------------------------------------
# 左プロンプトの表示
PROMPT="${user} ${pwd} ${git}
%# "
# 右プロンプトの表示
RPROMPT=''
