"Dark Skoll Config
"Plugins
"VimPlug
call plug#begin('$XDG_DATA_HOME/nvim/site/autoload')

"Airline
Plug 'vim-airline/vim-airline'
let g:airline_theme = 'sonokai'

"Autopairs
Plug 'jiangmiao/auto-pairs'

"Snippets
Plug 'sirver/ultisnips'
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
Plug 'honza/vim-snippets'

"Colorscheme
Plug 'sainnhe/sonokai'

"Surround
Plug 'tpope/vim-surround'

"Markdown
Plug 'plasticboy/vim-markdown'
Plug 'godlygeek/tabular'
let g:vim_markdown_math = 1
let g:vim_markdown_no_extensions_in_markdown = 1
let g:vim_markdown_autowrite = 1

"Bullets
Plug 'dkarter/bullets.vim'
let g:bullets_enabled_file_types = ['markdown', 'text']

"Goyo
Plug 'junegunn/goyo.vim'

call plug#end()

"General
filetype plugin on
filetype indent on

"Delete white space
autocmd BufWritePre * %s/\s\+$//e

"Conceal
set conceallevel=2

"Fuzzy finding
set path+=**
set wildmenu

"Numbering and rule
set number relativenumber
set ruler

"Set localleader
nnoremap <SPACE> <Nop>
let mapleader=" "

"Syntax and color
set termguicolors
colorscheme sonokai
syntax on

"Use systemclipboard
set clipboard+=unnamedplus

"UI
set cmdheight=1
set laststatus=2

"Search
"set ignorecase
set hlsearch
set incsearch

"Language
set langmenu=es
map <leader>s :setlocal spell! spelllang=es_mx<CR>
nnoremap <leader>n [s
nnoremap <leader>b ]s

"No backup
set nobackup
set nowb
set noswapfile

"Indentation
set smarttab
set expandtab
set shiftwidth=2
set tabstop=2
set si
set ai

"Linebreak
set lbr
set wrap

"Latex
command Latex execute "!pdflatex %"
command Zathura execute "!zathura $(echo %:r\".pdf\")&disown"
autocmd FileType tex nnoremap <buffer> <F2> :Latex<CR>
autocmd FileType tex nnoremap <buffer> <F6> :Zathura<CR>

"bettermovement
nnoremap j gj
nnoremap k gk

"Split nav
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

"Better macro
nnoremap <Space> @q

"splits
set splitright
set splitbelow
