call plug#begin()
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'jiangmiao/auto-pairs'
call plug#end()

filetype plugin on
syntax on

set backspace=indent,eol,start
set path+=**
set wildmenu
set number
set numberwidth=5
set tabstop=4 shiftwidth=4 expandtab
set undofile noswapfile nobackup
set undodir=/tmp
set laststatus=2
set statusline=[%l,%v\ %P%M]\ %f\ %r%h%w\ (%{&ff})\ %{fugitive#statusline()}
set showcmd

command! Maketags %!ctags -R .
command! JsonMinify %!jq -c .
command! JsonBeauty %!jq .

let mapleader = ","

nmap J 5j
nmap K 5k
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l
nmap <C-p> :Files<cr>
nmap <C-f> :Rg<cr>
nmap <Tab> :NERDTreeToggle<cr>

noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt

hi SignColumn guibg=NONE ctermfg=NONE ctermfg=NONE ctermbg=NONE
hi GitGutterAdd guibg=NONE ctermfg=10
hi GitGutterChange guibg=NONE ctermfg=12
hi GitGutterDelete guibg=NONE ctermfg=9
let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_modified = '~'
let g:gitgutter_sign_removed = '_'
