"""""""""""""""""""""""""""""""""""""""
" insert mode
"""""""""""""""""""""""""""""""""""""""
" カーソル移動
inoremap <C-e> <END>
inoremap <C-a> <HOME>
inoremap <C-k> <Up>
inoremap <C-j> <Down>
inoremap <C-h> <Left>
inoremap <C-l> <Right>
inoremap <C-d> <delete>

"""""""""""""""""""""""""""""""""""""""
" normal model
"""""""""""""""""""""""""""""""""""""""
" カーソル移動
nnoremap <C-f> <Right>
nnoremap <C-b> <Left>
nnoremap <C-e> <END>
nnoremap <C-a> <HOME>

" ハイライトを非表示にする
nnoremap <Esc><Esc> :nohlsearch<CR><Esc>

" ウィンドウサイズの変更
nnoremap <S-Left>  <C-w><<CR>
nnoremap <S-Right> <C-w>><CR>
nnoremap <S-Up>    <C-w>-<CR>
nnoremap <S-Down>  <C-w>+<CR>

" 入力履歴を非表示にする
nnoremap q: <Nop>
