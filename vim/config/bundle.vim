" NeoBundle 設定

" ファイルタイプ別のプラグイン/インデントを無効にする
filetype plugin indent off

if has('vim_starting')
  if &compatible
    " vi互換の動作を無効にする
    set nocompatible
  endif

  " bundleで管理するディレクトリを指定する
  set runtimepath+=~/.vim/bundle/neobundle.vim
endif

" NeoBundleを初期化する
call neobundle#begin(expand('~/.vim/bundle/'))

" NeoBundleをNeoBundle自体で管理する
NeoBundleFetch 'Shougo/neobundle.vim'

" インストール プラグイン

" ファイル, バッファ管理プラグイン
NeoBundle 'Shougo/unite.vim'
" 補完プラグイン
NeoBundle 'Shougo/neocomplete'
" スニペット補完プラグイン
NeoBundle 'Shougo/neosnippet'
" 各種スニペット
NeoBundle 'Shougo/neosnippet-snippets'

" ここでNeobundleの管理を終了する
call neobundle#end()

" ファイルタイプ別のプラグイン/インデントを有効にする
filetype plugin indent on

" 起動時に未インストールプラグインをインストールする
NeoBundleCheck
