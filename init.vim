:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set completeopt-=preview " For No Previews


nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

inoremap ( ()<Esc>i
inoremap { {}<Esc>i
inoremap {<CR> {<CR>}<Esc>O
inoremap [ []<Esc>i
inoremap ' ''<Esc>i
inoremap " ""<Esc>i

let g:python3_host_prog = 'C:/Users/fff/AppData/Local/Programs/Python/Python310/python.exe'
let g:python2_host_prog = 'C:/Users/fff/AppData/Local/Programs/Python/Python27/python2.exe'

call plug#begin()

Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/preservim/nerdtree' " NERDTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons for NERDTree
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'https://github.com/neoclide/coc.nvim' " Auto Completion
Plug 'https://github.com/vim-autoformat/vim-autoformat' " vim code formatter
Plug 'https://github.com/SirVer/ultisnips'
Plug 'https://github.com/mlaursen/vim-react-snippets'
Plug 'https://github.com/McSinyx/vim-octave.git', {'for': 'octave'}
set encoding=UTF-8

call plug#end()

:colorscheme challenger_deep

" NERDTree setup
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

" coc.nvim
" --- Just Some Notes ---
" :PlugClean :PlugInstall :UpdateRemotePlugins
"
" :CocInstall coc-python
" :CocInstall coc-clangd
" :CocInstall coc-snippets
" :CocCommand snippets.edit... FOR EACH FILE TYPE

inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"

" air-line setup
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" vim-autoformat setup
noremap <F3> :Autoformat<CR>
au BufWrite * :Autoformat

let s:is_win = has('win32') || has('win64')
if s:is_win
	" ... other Windows specific settings

	nmap <C-z> <Nop>
endif
