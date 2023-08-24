" インデント関連の共通定義
set expandtab     " タブをスペースへ変更する
set tabstop=2     " タブ幅
set shiftwidth=2  " シフト移動幅
set softtabstop=2 " ソフトタブ幅
set autoindent    " オートインデント
set smartindent   " 高度な自動インデント

" 言語タブ設定
" BufNewFile/BufRead: 新規および既存ファイル読込みの際に発生するイベント
" BufEnter: バッファに入ったあと発生するイベント
" setlocal: 現在開いているファイルのみ適応させる
augroup fileTypeIndent
  autocmd!
  " Golang (hard tab width=8 が推奨されている)
  autocmd BufNewFile,BufRead *.go    setlocal noexpandtab tabstop=8 shiftwidth=8 softtabstop=8
  " Python auto index 設定
  " autocmd FileType python setlocal smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
  autocmd BufNewFile,BufRead *.py    setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
  " C
  autocmd BufNewFile,BufRead *.c     setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
  " C++
  autocmd BufNewFile,BufRead *.cpp   setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
  " Java
  autocmd BufNewFile,BufRead *.java  setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
  " C#
  autocmd BufNewFile,BufRead *.cs    setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
  " Dart
  autocmd BufNewFile,BufRead *.dart  set filetype=dart
  " Dart pubspec.yaml のテンプレート設定
  autocmd BufNewFile pubspec.yaml 0r $HOME/.vim/templates/pubspec.yaml
augroup END

" 自動的コメント文字列が挿入されるの止める
" see: https://gist.github.com/rbtnn/8540338
augroup auto_comment_off
  autocmd!
  autocmd BufEnter * setlocal formatoptions-=ro
augroup END

" Makefile の時はハードタブに変更する
let _currentfile = expand("%:r")
if _currentfile == 'Makefile'
  set noexpandtab
endif
