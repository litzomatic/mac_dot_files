" PEP 8
set expandtab
set shiftwidth=4
set tabstop=4
" I like to see the one space extra
set columns=80
" But PEP 8 is actually 79, gq makes this pwnage!
set textwidth=79
" The same colorscheme I'm using for IPython
colorscheme monokai
" Turn the syntax highlighting on
syn on
" Python uses indentation for syntax so foldmethod indent is great
set foldmethod=indent
" I need this so the folds are open by default
set foldlevelstart=20
" If you prefer the Omni-Completion tip window to close when a selection is
" made, these lines close it on movement in insert mode or when leaving
" insert mode
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
" ropevim.vim which requires ropevim
" <C-c> G to go to a definition
" <C-c> D to define something
" Rope<tab> for awesome utilities
function! LoadRope()
python << EOF
import ropevim
EOF
endfunction

call LoadRope()

