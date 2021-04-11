
hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
syntax on
filetype plugin indent on
set nocompatible
set shortmess+=I
set number
set numberwidth=5
set relativenumber
set laststatus=2
set backspace=2 " Backspace deletes like most programs in insert mode
set hidden
set nobackup
set nowritebackup
set noswapfile
set history=50
set ignorecase
set ruler
set smartcase
set incsearch
set noerrorbells visualbell t_vb=
set mouse+=a
set tabstop=4
set shiftwidth=4
set expandtab
set showcmd
set path+=**
set list listchars=tab:»·,trail:·,nbsp:·
set wildmenu
set textwidth=80
set colorcolumn=+1
set updatetime=300

nmap Q <Nop> " 'Q' in normal mode enters Ex mode. You almost never want this.
nnoremap <leader><leader> <C-^>
nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>
nnoremap <leader>html :-1read $HOME/.vim/skeleton.html<CR>6jwf>a
nnoremap <leader>ce :-1read $HOME/.vim/custom-element.js<CR>V%:s/custom-element/
inoremap <C-j> <C-w>j
inoremap <C-k> <C-w>k
inoremap <C-h> <C-w>h
inoremap <C-l> <C-w>l
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>
inoremap <Left>  <ESC>:echoe "Use h"<CR>
inoremap <Right> <ESC>:echoe "Use l"<CR>
inoremap <Up>    <ESC>:echoe "Use k"<CR>
inoremap <Down>  <ESC>:echoe "Use j"<CR>

let mapleader=" "
let g:netrw_banner=0        " disable annoying banner
let g:netrw_browse_split=4  " open in prior window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

command! MakeTags !ctags -R .

call plug#begin()
Plug 'tomlion/vim-solidity'
Plug 'yuezk/vim-js'
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'vim-syntastic/syntastic'
call plug#end()
