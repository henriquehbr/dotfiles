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

" Save with: s
nnoremap s :w<CR>

" Exit with: q
nnoremap q :q<CR>

" Force exit with: Q
nnoremap Q :q!<CR>

" Save-Exit with: x
nnoremap x :x<CR>

" Open new tab with: n
nnoremap n :tabnew<CR>

" Open file in current tab
nnoremap o :Explore<CR>

" Open file in new tab with: O
nnoremap O :Tex<CR>

" Go to next tab with: tab
nnoremap <Tab> :tabn<CR>

" Go to previous tab with: shift + tab
nnoremap <S-Tab> :tabp<CR>
