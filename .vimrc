set encoding=UTF-8

" HOTKEYS
map <F7> gg=G<C-o><C-o>
"au BufLeave * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'
"au BufEnter * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'

" SPACING
"set expandtab Uncomment to use spaces instead of tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set ww+=<,>,[,],h,l
set tw=80 fo+=t fo-=l
set wrap linebreak

" PLUGINS
call plug#begin('~/.vim/plugged')
Plug 'jacoborus/tender.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
call plug#end()

" STYLING
set number
au BufLeave,FocusLost,InsertEnter,WinLeave * if &nu | set nornu | endif
au BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu | endif
set noshowmode
set colorcolumn=80
highlight ColorColumn guibg=Black
highlight ColorColumn ctermbg=0
colorscheme tender
let g:airline_powerline_fonts = 1
