" Pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

" Settings for airline
set laststatus=2 timeoutlen=350 noshowmode
let g:airline_theme='papercolor'
let g:airline_powerline_fonts = 1

" Editor colours
syntax on
colors PaperColor
let &background = "light"

" Tab settings
set ai ts=4 softtabstop=4 et sw=4 nu
autocmd Filetype c setlocal noet ts=4 softtabstop=4 sw=4

" Ctrl-P settings
let g:ctrlp_show_hidden = 1

" Misc. settings
set splitright splitbelow

" Key maps
let mapleader='\'
map <C-n> :NERDTreeToggle<CR>
nmap <Leader><Up> <C-W><C-k>
nmap <Leader><Down> <C-W><C-j>
nmap <Leader><Left> <C-W><C-h>
nmap <Leader><Right> <C-w><C-l>

" Taken from the Vim wikia
" Mappings to access buffers (don't use "\p" because a
" delay before pressing "p" would accidentally paste).
" \l       : list buffers
" \b \f \g : go back/forward/last-used
" \1 \2 \3 : go to buffer 1/2/3 etc
nnoremap <Leader>l :ls<CR>
nnoremap <Leader>b :bp<CR>
nnoremap <Leader>f :bn<CR>
nnoremap <Leader>g :e#<CR>
nnoremap <Leader>1 :1b<CR>
nnoremap <Leader>2 :2b<CR>
nnoremap <Leader>3 :3b<CR>
nnoremap <Leader>4 :4b<CR>
nnoremap <Leader>5 :5b<CR>
nnoremap <Leader>6 :6b<CR>
nnoremap <Leader>7 :7b<CR>
nnoremap <Leader>8 :8b<CR>
nnoremap <Leader>9 :9b<CR>
nnoremap <Leader>0 :10b<CR>

" Open NERDTree if no file is specified on vim start
" Taken from the NERDTree wiki FAQ
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

