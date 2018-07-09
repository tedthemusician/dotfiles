" Run a command: yy@:"

call plug#begin()
Plug 'airblade/vim-gitgutter'
Plug 'alvan/vim-closetag'
Plug 'dag/vim2hs'
Plug 'FooSoft/vim-argwrap'
Plug 'godlygeek/tabular'
Plug 'henrik/vim-indexed-search'
Plug 'honza/vim-snippets'
Plug 'jiangmiao/auto-pairs'
Plug 'justinmk/vim-ipmotion'
Plug 'kana/vim-textobj-indent'
Plug 'kana/vim-textobj-user'
Plug 'machakann/vim-highlightedyank'
Plug 'mxw/vim-jsx'
Plug 'ncm2/ncm2'
Plug 'ncm2/ncm2-tern', {'do': 'npm install'}
Plug 'ncm2/ncm2-ultisnips'
Plug 'posva/vim-vue'
Plug 'roxma/nvim-yarp'
Plug 'rstacruz/sparkup'
Plug 'scrooloose/nerdtree'
Plug 'SirVer/ultisnips'
Plug 'supercollider/scvim'
Plug 'tommcdo/vim-exchange'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'udalov/kotlin-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-ruby/vim-ruby'
Plug 'w0rp/ale'
Plug 'wavded/vim-stylus'
Plug 'WolfgangMehner/c-support'

call plug#end()

au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery
au BufRead,BufNewFile *.json set ft=json syntax=json
au BufRead,BufNewFile *.lyr set ft=lyr syntax=lyr
au BufEnter * call ncm2#enable_for_buffer()

" Spacebar leader
let mapleader = "\<Space>"

inoremap jk <esc>
nnoremap <backspace> :noh<cr>
nnoremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
nnoremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')
nnoremap <silent> gl :ALENextWrap<cr>
nnoremap <silent> gL :ALEPreviousWrap<cr>
nnoremap Y y$
nnoremap / /\v
vnoremap / /\v
nnoremap ? ?\v
vnoremap ? ?\v
nnoremap <c-left> <c-w>h
nnoremap <c-down> <c-w>j
nnoremap <c-up> <c-w>k
nnoremap <c-right> <c-w>l
nnoremap <c-n> :NERDTreeToggle<cr>
inoremap <c-o> <esc>O
inoremap <expr> <Tab>   pumvisible() ? "\<c-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<c-p>" : "\<S-Tab>"
nnoremap - ddkP==
nnoremap + ddp==
vnoremap - dkP==1v
vnoremap + dp==1v
nnoremap <leader>break :set wrap! linebreak!<cr>
nnoremap <leader>c "*y
nnoremap <leader>C gg"*yG``
nnoremap <leader>v "*p
nnoremap <leader>V ggVG"*p
nnoremap <leader>indent gg=G``
nnoremap <leader>node :! node % <cr>
nnoremap <leader>runpy :! python3 % <cr>
nnoremap <leader>runp2 :! python % <cr>
nnoremap <leader>runr :! ruby % <cr>
nnoremap <leader>rot ggg?G``
nnoremap <leader>xxx ggg?GZZ
nnoremap <leader>/ :Commentary<cr>
vnoremap <leader>/ :Commentary<cr>
nnoremap <leader>init :tabe ~/.config/nvim/init.vim<cr>

syntax on

let g:python3_host_prog = '/usr/local/bin/python3'

let g:ale_lint_delay = 500

" Don't change Haskell lambdas and composition operators to unicode
let g:haskell_conceal = 0

let g:highlightedyank_highlight_duration = 600

let g:html_indent_autotags = "html,head,body"

let g:pymode_python = 'python3'

" Make { and  } skip closed folds
let g:ip_skipfold=1

set autoindent
set cc=80,100,120
set completeopt=noinsert,menuone,noselect
set conceallevel=2
set concealcursor=niv
set cursorline
set expandtab
set gdefault
set hlsearch
set ignorecase
set inccommand=nosplit
set incsearch
set laststatus=2
set lazyredraw
set mouse=a
set nofoldenable
set nowrap
set number
set relativenumber
set shiftround
set shiftwidth=4
set shortmess+=I
set showcmd
set smartcase
set softtabstop=4
set splitbelow
set splitright
set tabstop=4
set virtualedit=block

filetype plugin indent on

" autocmd FileType haskell :UltiSnipsAddFiletypes haskell
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType python setlocal completeopt-=preview

if (has("termguicolors"))
    set termguicolors
endif
set bg=dark

colorscheme spacemacs-theme

