syntax enable               " Enables syntax highlighting
colorscheme onedark         " Enables the onedark color scheme
set number                  " Enables line numbers
set tabstop=4               " Turns tabs into four spaces when reading a file
set softtabstop=4           " Turns tabs into four spaces when editing a file
set expandtab               " Turns tabs into spaces
set shiftwidth=4            " Turns shifts into four spaces
set autoindent              " Keeps previous indentation on new lines
set showmatch               " Highlights matching parenthesis and brackets
set colorcolumn=81          " Puts a vertical line at eighty characters
set nobackup                " Disables creation of backup files
set noswapfile              " Disables creation of swap files
set lazyredraw              " Doesn't redraw the screen during macro execution
set title                   " Puts the file name in the status bar
set noerrorbells            " Turns off audio bells for errors
set wrap!                   " Turns off line wrapping
set encoding=utf-8          " Sets encoding to UTF-8
set termguicolors           " Enables 24-bit color

" Remap window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Tree view settings
let g:netrw_liststyle=4     " Sets the default style of the tree view
let g:netrw_banner=0        " Removes the tree view banner
let g:netrw_brows_split=2   " By default, open new files in vertical split
let g:netrw_altv=1          " Have files open on the right side
let g:netrw_winsize=15      " Set the width of the tree view

" Close Vim if the tree view is the only window left
aug netrw_close
  au!
  au WinEnter * if winnr('$') == 1 && getbufvar(winbufnr(winnr()), "&filetype") == "netrw"|q|endif
aug END

" Call the OpenCloseTree() function when :Tree is executed
command Tree :call OpenCloseTree()

" If only one window is prepsent, open the tree view, else close the tree view
function! OpenCloseTree()
    if winnr('$') == 1
        Vex
    else
        execute "normal \<C-h>:q\<cr>"
    endif
endfunction

" Auto-closing characters
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>

" Auto-skip closing characters
inoremap <expr> " strpart(getline('.'), col('.')-1, 1) == "\"" ? "\<Right>" : "\"\"\<Left>"
inoremap <expr> ' strpart(getline('.'), col('.')-1, 1) == "\'" ? "\<Right>" : "\'\'\<Left>"
inoremap <expr> ) strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")"
inoremap <expr> ] strpart(getline('.'), col('.')-1, 1) == "]" ? "\<Right>" : "]"
inoremap <expr> } strpart(getline('.'), col('.')-1, 1) == "}" ? "\<Right>" : "}"

" This macro replaces the currently opened file with the currently selected
" value in the tree view
let @o="v\<C-l>\<Esc>:wq\<cr>\<C-h>:q\<cr>:Vex\<cr>\<C-l>"

" When the tree view is opened, run the new mapping function
augroup netrw_mapping
    autocmd!
    autocmd filetype netrw call NetrwMapping()
augroup END

" Applies our tree view specific mappings
function! NetrwMapping()
    noremap <buffer> o @o
endfunction
