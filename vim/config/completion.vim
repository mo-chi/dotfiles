" 補完・履歴 設定
set wildmenu              " コマンドライン補完
set wildchar=<tab>        " コマンド補完を開始するキー
" set wildmode=list:full  " リスト表示，最長マッチ
set history=32            " 履歴の保存数

" vim では 最終行に空行が見えない. PSR-2 規約
" see: https://blog.hika69.com/blog/2016/05/20/psr-2-single-blank-line/
" set binary noeol  " Binary Mode でかつ noeol が設定できれば, 保存した時に改行を追加しない
" set endofline     " ファイル末尾の改行を編集しない
" set fixeol        " ファイル末尾の改行を編集しない

" vim で最終行が空行の場合は保存時に削除する
" see: https://qiita.com/sachin21/items/22cbd7aacc6013c5e12d
autocmd BufWritePre * call s:remove_line_in_last_line()

function! s:remove_line_in_last_line()
  if getline('$') == ""
    $delete _
  endif
endfunction
