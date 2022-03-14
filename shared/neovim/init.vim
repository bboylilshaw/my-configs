syntax on

" set guicursor=
" restore cursor to underline when exitting
au VimLeave * set guicursor=a:hor20

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin()
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'myusuf3/numbers.vim'
call plug#end()

map <C-n> :NERDTreeToggle<CR>
nmap <C-Left> :tabprevious<CR>
nmap <C-Right> :tabnext<CR>
nmap <C-t> :tabnew<CR>
nmap <C-w> :tabclose<CR>

" packadd! dracula
syntax enable
colorscheme dracula

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

nnoremap <F5> :NumbersToggle<CR>
nnoremap <F6> :NumbersOnOff<CR>
