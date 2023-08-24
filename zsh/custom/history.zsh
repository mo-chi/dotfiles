export HISTFILE=$HOME/.zsh_history  # 履歴ファイルの保存先
export HISTSIZE=512                 # 履歴がメモリに保存される件数
export SAVEHIST=512                 # 履歴ファイルに保存される履歴の件数

setopt inc_append_history           # 履歴をインクリメンタルに追加する
setopt share_history                # 履歴の共有する
setopt hist_ignore_dups             # 重複した履歴を保存しない
setopt hist_ignore_all_dups         # 重複するコマンド行は古い方を削除する
setopt hist_no_store                # 履歴に history コマンドを記録しない
setopt hist_ignore_space            # スペースで始まるコマンド行は履歴から削除する
setopt hist_reduce_blanks           # 余分な空白は詰めて記録する
setopt hist_expand                  # 補完時に履歴を自動的に展開する
setopt extended_history             # 開始と終了時刻を記録する

# 履歴の検索コマンド
bindkey "^R" history-incremental-search-backward
bindkey "^S" history-incremental-search-forward
