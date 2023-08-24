" 表示関連
syntax on       " コードの色分け
" set paste     " ペーストの設定
set title       " ウィンドウ枠にタイトルを表示
set number      " 行番号の表示
set showmatch   " 対応する括弧の強調
set nowrap      " 折り返しを無効
set ruler       " カーソルが何行, 何列目にあるかを表示

" 行番号の背景色の設定
hi LineNr ctermbg=235 ctermfg=0
hi CursorLineNr term=bold cterm=NONE ctermfg=228 ctermbg=NONE

" アンダーラインを引く
set cursorline
hi CursorLine cterm=underline ctermfg=NONE ctermbg=NONE
hi CursorLine gui=underline guifg=NONE guibg=NONE

" カラーテーマの設定
colorscheme molokai
" colorscheme monokai

" 補完候補のポップアップの背景色
hi Pmenu ctermbg=0
hi PmenuSel ctermbg=4
hi PmenuSbar ctermbg=2
hi PmenuThumb ctermfg=3
