set smartindent
set shiftwidth=4
set hlsearch
set noswapfile
set nu
set incsearch
set tabstop=4 softtabstop=4
set undodir=~/.vim/undodir

set colorcolumn=80
highlight ColorColumns ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')

Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'lervag/vimtex'
Plug 'vim-utils/vim-man'
Plug 'valloric/youcompleteme'
Plug 'mbbill/undotree'
Plug 'SirVer/ultisnips' 
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'

call plug#end()

colorscheme dracula

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <silent> <Leader>+ :vertical resize +5<CR>
nnoremap <silent> <Leader>- :vertical resize -5<CR>
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

noremap <leader>y "*y<CR>
noremap <leader>p "*p<CR>

nnoremap <leader>. :tabn<CR>
nnoremap <leader>, :tabp<CR>
nnoremap <leader>n :tabe<CR>
nnoremap <leader>x :tabclose<CR>

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-o>"
let g:UltiSnipsJumpForwardTrigger="<c-o>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
