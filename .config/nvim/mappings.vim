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

" Save with Ctrl + S
nnoremap <C-s> <Esc>:w<CR>
inoremap <C-s> <Esc>:w<CR>i
