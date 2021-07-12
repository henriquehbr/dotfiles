" Set default position for NERDTree window
let g:NERDTreeWinPos = "right"

" Remove help text at the top of NERDTree window
let g:NERDTreeMinimalUI = 1

let g:indentLine_char = '│'

" Hide empty line tilde character by setting their color to same as background
highlight EndOfBuffer ctermfg=black

set updatetime=500

" Enable line numbers
set number relativenumber

" Enables syntax highlight
syntax on

" use custom .vimrc (if present) per-directory basis
set exrc

" Prevent text from wrapping
set nowrap

" spaces per tab keypress
set tabstop=4

" spaces per indentation
set shiftwidth=4

" spaces per tab on insert mode
set softtabstop=4

" use appropriate number of spaces for tab
set expandtab

" auto indentation on newlines
set smartindent

" disable swap files (unsaved closed files)
set noswapfile

" Set the encoding written to file
set fileencoding=utf-8

" Enable highlighting of the current line
set cursorline

" Centers the cursor horizontally when scrolling
set scrolloff=999
