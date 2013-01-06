" Stuff does not work 'right' without this
set nocompatible

" Detects file type and sets filetype
filetype on

" File type plugin allows settings per extension
filetype plugin on

" autoindent makes sense to me
set autoindent

" This is a useful feature, but it takes a bit getting used to
set incsearch

" Mixed white space is always bad
let w:MixedWhiteSpaceM1=matchadd('ErrorMsg', '^\%( \+\t\+\|\t\+ \+\)\s*', -1)

" Trailing white space is almost always bad
let w:TrailingWhiteSpaceM1=matchadd('ErrorMsg', '\s\+$', -1)

" Highlight the whole line I'm on. I find it useful for locating the cursor.
set cursorline

" Make a useful status line
set laststatus=2
set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L

" Views from the Vim documentation, there a many other suggestions if
" I run into problems with this.  Rather then putting this into the
" filetype I put it here so I know what types of files I am doing
" this for at a glance.
au BufWinLeave *.py mkview
au BufWinEnter *.py silent loadview

