set clipboard=unnamedplus
syntax on
set mouse=a
set backspace=indent,eol,start

" Function to move between mouse=a and mouse=
function! ToggleMouseSetting()
  if &mouse == 'a'
    set mouse=
  else
    set mouse=a
  endif
endfunction

" Change set mouse=a to set mouse= or set mouse=a with CTRL+C in normal Mode // bind
nnoremap <C-T> :call ToggleMouseSetting()<CR>

" Change set mouse=a to set mouse= or set mouse=a with CTRL+C in Insert mode // bind
inoremap <C-T> <Esc>:call ToggleMouseSetting()<CR>

" Change position of line by 1 via W or S // bind
nnoremap W :m .-2<CR>==
nnoremap S :m .+1<CR>==
vnoremap W :m '<-2<CR>gv=gv
vnoremap S :m '>+1<CR>gv=gv

vnoremap <C-C> "+y 
nnoremap <C-C> "+y


" Function to toggle line numbers
function! ToggleLineNumbers()
  if &number
    set nonumber
  else
    set number
  endif
endfunction

" Toggle line numbers with Ctrl+B in Normal Mode
nnoremap <C-B> :call ToggleLineNumbers()<CR>

" Toggle line numbers with Ctrl+B in Insert Mode
inoremap <C-B> <Esc>:call ToggleLineNumbers()<CR>

" Save file with Control+E

inoremap <C-W> <Esc>:w<CR>
vnoremap <C-W> <Esc>:w<CR>
nnoremap <C-W> <Esc>:w<CR>

" Quit with Control+Q

vnoremap <C-Q> <Esc>:q!<CR>
inoremap <C-Q> <Esc>:q!<CR>
nnoremap <C-Q> <Esc>:q!<CR>

inoremap <C-R> <Esc>:source .vimrc<CR>
vnoremap <C-R> <Esc>:source .vimrc<CR>
nnoremap <C-R> <Esc>:source .vimrc<CR>

