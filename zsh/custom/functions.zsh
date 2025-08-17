# ------------------------------------
# custom mkdirs
# ------------------------------------
mkcd() {
  mkdir -p $1 && cd $1
}

dmkdir() {
  local date=$(date '+%Y%m%d')
  mkdir $date && cd $date
}

# ------------------------------------
# find files
# ------------------------------------
fname() {
  if [ $# -ne 1 ]; then
    echo "Usage: fname filename"
    return
  fi

  find . -iname "*$@*"
}

# ------------------------------------
# custom date
# ------------------------------------
timestamp() {
  date "+%s"
}

datetime() {
  date "+Date: %Y-%m-%d %A Time: %H:%M:%S"
}

iso8601() {
  # iso8601 JST format: YYYYMMDDThhmmss+0900
  # see: https://blog.shibayu36.org/entry/2019/01/09/193000
  date -r $(timestamp) +%Y-%m-%dT%H:%M:%S%z
}

stopwatch() {
  echo 'To end [controle + d]'
  time cat
}

# ------------------------------------
# unpacking
# ------------------------------------
ex() {
  if [ -f $1 ]; then
    case $1 in
      *.tar.bz2)   tar xvjf $1    ;;
      *.tar.gz)    tar xvzf $1    ;;
      *.tar.xz)    tar xvJf $1    ;;
      *.bz2)       bunzip2 $1     ;;
      *.rar)       unrar x $1     ;;
      *.gz)        gunzip $1      ;;
      *.tar)       tar xvf $1     ;;
      *.tbz2)      tar xvjf $1    ;;
      *.tgz)       tar xvzf $1    ;;
      *.zip)       unzip $1       ;;
      *.Z)         uncompress $1  ;;
      *.7z)        7z x $1        ;;
      *.lzma)      lzma -dv $1    ;;
      *.xz)        xz -dv $1      ;;
      *)           echo "Don't know how to extract '$1'..." ;;
    esac
  else
    echo "'$1' is not a valid file!"
  fi
}

# ---------------------------------------------------------
# gitignore utility common
# see: https://github.com/joeblau/gitignore.io
# ---------------------------------------------------------
gitignore.io() {
  if [ $# -gt 0 ]; then
    curl -L -s https://www.gitignore.io/api/$@ ;
  fi
}

# ------------------------------------
# custom history
#
# format time-stamps
#   -i : yyyy-mm-dd
#   -f : mm/dd/yyyy
#   -E : dd.mm.yyyy
# ------------------------------------
history-all() {
  history -i 1
}

# ------------------------------------
# iTerm tab colors
# ------------------------------------
tab-color() {
  if [ $# -eq 0 ]; then
    echo 'Usage: tab-color {red|orange|yellow|green|blue|purple|black|white}'
    return
  fi

  local r=$1, g=$2, b=$3
  case $1 in
    "red")    r=255 ; g=116 ; b=112 ;;
    "orange") r=198 ; g=154 ; b=98  ;;
    "yellow") r=239 ; g=219 ; b=91  ;;
    "green")  r=182 ; g=213 ; b=84  ;;
    "blue")   r=98  ; g=165 ; b=245 ;;
    "purple") r=192 ; g=144 ; b=215 ;;
    "black")  r=0   ; g=0   ; b=0   ;;
    "white")  r=255 ; g=255 ; b=255 ;;
  esac

  echo -ne "\033]6;1;bg;red;brightness;$r\a"
  echo -ne "\033]6;1;bg;green;brightness;$g\a"
  echo -ne "\033]6;1;bg;blue;brightness;$b\a"
}

tab-reset() {
  echo -ne "\033]6;1;bg;*;default\a"
}
