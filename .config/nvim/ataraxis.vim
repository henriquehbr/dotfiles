" Vim global plugin for a more pleasing reading experience
" Maintainer: Henrique Borges (@henriquehbr) <henriqueborgeshbr@gmail.com>
" License: this file is placed in the public domain

let g:editor_width = 80
let g:min_pad_width = 4
let s:nerdtree_width = 34

" Change buffer split character to blank space
" Set buffer split character to transparent
highlight VertSplit cterm=NONE

" Disables tilde (~) characters indicating blank lines
highlight EndOfBuffer ctermfg=black ctermbg=black

function! WinByBufname(bufname)
	" map => loops through a list
	" each element can be accessed through 'v:val'
	let bufmap = map(range(1, winnr('$')), '[bufname(winbufnr(v:val)), v:val]')
	let thewindow = filter(bufmap, 'v:val[0] =~ a:bufname')[0][1]
	execute thewindow 'wincmd w'
endfunction

function GetPadWidth()
	let padding_width = (&columns - (g:editor_width + 4)) / 2
	return padding_width
endfunction

function GetBuffers()
	let buffers = []
	for bufferIndex in range(1, bufnr('$'))
		let bufferName = bufname(bufferIndex)
		call add(buffers, bufferName)
	endfor
	return join(buffers)
endfunction

function SetupPads()
	if &columns < g:editor_width | return | endif
	let width = GetPadWidth()
	if &splitright | set nosplitright | endif
	vnew leftbuffer
	exe "vertical resize" . width
	setlocal nonumber norelativenumber nocursorline nobuflisted laststatus=0
	wincmd l
	set splitright
	vnew rightbuffer
	wincmd l
	exe "vertical resize" . width
	setlocal nonumber norelativenumber nocursorline nobuflisted laststatus=0
	wincmd h
endfunction

function RemovePads()
    if GetBuffers() !~ "leftbuffer rightbuffer" | return | endif
	" buffer wipeout => completely removes any trace of the buffer
	bw! leftbuffer rightbuffer
endfunction

function AdjustPads()
	if &columns < g:editor_width
		call RemovePads()
	else
		let buffers = GetBuffers()
		if buffers !~ "leftbuffer rightbuffer" | call SetupPads() | endif
		let width = GetPadWidth()
		call WinByBufname('leftbuffer')
		exe "vertical resize" . width
		call WinByBufname('rightbuffer')
		exe "vertical resize" . width
		wincmd h
	endif
endfunction

" Create paddings
autocmd VimEnter * call SetupPads()

" Adjust paddings width on resize
autocmd VimResized * if GetBuffers() =~ "leftbuffer rightbuffer" || winnr() == 1 | call AdjustPads() | endif

" Remove pads when a new split is created
autocmd WinEnter * if winwidth('$') < g:editor_width && winwidth('$') != 31 | call RemovePads() | endif

" Remove pads if viewport is too thin when opening nerdtree
autocmd BufEnter * if &columns - (s:nerdtree_width + g:min_pad_width * 2) < g:editor_width && @% == "NERD_tree_1" | call RemovePads() | endif

" Re-add paddings when the previously created buffer is closed
autocmd WinEnter * if winnr('$') == 1 | call SetupPads() | endif

" Quit when only the two pads are left
autocmd BufEnter * if winnr('$') == 2 && (@% == "leftbuffer" || @% == "rightbuffer") | qa | endif
