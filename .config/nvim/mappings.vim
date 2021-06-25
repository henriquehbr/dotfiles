" +────────────+─────────+─────────+──────────+─────────+─────────+───────────────────+───────────────+───────────+
" | Mode       | Normal  | Insert  | Command  | Visual  | Select  | Operator-pending  | Terminal-Job  | Lang-arg  |
" +────────────+─────────+─────────+──────────+─────────+─────────+───────────────────+───────────────+───────────+
" | [nore]map  | yes     | -       | -        | yes     | yes     | yes               | -             | -         |
" | n[nore]map | yes     | -       | -        | -       | -       | -                 | -             | -         |
" | [nore]map! | -       | yes     | yes      | -       | -       | -                 | -             | -         |
" | i[nore]map | -       | yes     | -        | -       | -       | -                 | -             | -         |
" | c[nore]map | -       | -       | yes      | -       | -       | -                 | -             | -         |
" | v[nore]map | -       | -       | -        | yes     | yes     | -                 | -             | -         |
" | x[nore]map | -       | -       | -        | yes     | -       | -                 | -             | -         |
" | s[nore]map | -       | -       | -        | -       | yes     | -                 | -             | -         |
" | o[nore]map | -       | -       | -        | -       | -       | yes               | -             | -         |
" | t[nore]map | -       | -       | -        | -       | -       | -                 | yes           | -         |
" | l[nore]map | -       | yes     | yes      | -       | -       | -                 | -             | yes       |
" +────────────+─────────+─────────+──────────+─────────+─────────+───────────────────+───────────────+───────────+

" save -> s
nnoremap s :w<CR>

" exit -> q
nnoremap q :q<CR>

" force exit -> Q
nnoremap Q :q!<CR>

" save-exit -> x
nnoremap x :x<CR>

" new tab -> n
nnoremap t :tabnew<CR>

" open file in current tab -> o
nnoremap o :Explore<CR>

" open file in new tab -> O
nnoremap O :Tex<CR>

" next tab -> tab
nnoremap <Tab> :tabn<CR>

" previous tab -> shift + tab
nnoremap <S-Tab> :tabp<CR>

" disable default undo
nnoremap <C-r> <Nop>

" undo -> z
nnoremap z u

" redo -> shift + z
nnoremap <S-z> <C-R>

" search -> f
nnoremap f /

" toggle NERDTree -> b
nnoremap <C-b> :NERDTreeToggle<CR>

" focus on NERDTree -> e
noremap <C-s-e> <C-w>p
