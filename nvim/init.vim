set number

"Tabs
set tabstop=2
set softtabstop=2
set shiftwidth=2
set autoindent

"Enable syntax highlighting
syntax on

"Disable swap file creation
set noswapfile

filetype plugin on

"Initialize plug
call plug#begin(stdpath('data') . '/plugged')

"Colorscheme
Plug 'morhetz/gruvbox'

Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'https://github.com/tpope/vim-commentary'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'
Plug 'jdhao/better-escape.vim'
Plug 'tikhomirov/vim-glsl'
Plug 'sbdchd/neoformat'

call plug#end()

"Set up the colorscheme
colorscheme gruvbox

let g:neoformat_try_node_exe = 1

"Toggle NERDTree on Ctrl+T
nnoremap <C-l> :Neoformat prettier<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap ; <C-w>
inoremap <silent><expr> <c-space> coc#refresh()
