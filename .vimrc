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
set cursorline
let &background = "light"

" Tab settings
" Default: use 4-column-wide tabs
set autoindent tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab
" For C (specifically), GNU-style: 4-column-wide tabs
autocmd Filetype c setlocal ts=4 sts=4 sw=4 noet
" For HTML, JS and Ruby: 2-column expanded tabs
au Filetype html,javascript,ruby setl ts=2 sts=2 sw=2 et
" For Python, as in PEP-8: 4-column expanded tabs
au Filetype python setl ts=4 sts=4 sw=4 et

" Ctrl-P settings
let g:ctrlp_show_hidden = 1

" Misc. settings
set splitright splitbelow
set number

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

