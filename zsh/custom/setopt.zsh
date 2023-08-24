setopt nolistbeep       # ビープ音を鳴らさない
setopt multios          # 複数のリダイレクトを記述する
setopt prompt_subst     # PROMPT 変数内で変数参照する

setopt auto_menu        # TAB で順に補完候補を切り替える
setopt list_types       # 補完候補一覧でファイルの種別を識別マーク表示する
setopt auto_list        # 補完候補を一覧表示する
setopt complete_in_word # 語の途中でもカーソル位置で補完する
setopt always_to_end    # 補完時に文字列末尾へカーソル移動する

setopt auto_cd           # cd コマンドなしにディレクトリを移動する
setopt auto_pushd        # ディレクトリの移動履歴を自動的にスタックに追加する
setopt pushd_ignore_dups # auto_pushd で重複するディレクトリは記録しない
setopt pushdminus
