" Run a command: yy@:"

call plug#begin()
Plug 'airblade/vim-gitgutter'
Plug 'FooSoft/vim-argwrap'
Plug 'godlygeek/tabular'
Plug 'henrik/vim-indexed-search'
Plug 'honza/vim-snippets'
Plug 'jiangmiao/auto-pairs'
" Skip paragraph boundaries in closed folds
Plug 'justinmk/vim-ipmotion'
Plug 'kana/vim-textobj-user'
Plug 'machakann/vim-highlightedyank'
Plug 'neomake/neomake'
Plug 'kana/vim-textobj-indent'
Plug 'othree/html5.vim'
Plug 'rstacruz/sparkup'
Plug 'scrooloose/nerdtree'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
" Plug 'SirVer/ultisnips'
Plug 'tommcdo/vim-exchange'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'vim-airline/vim-airline'
" Plug 'Yggdroot/indentLine'
call plug#end()

au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery
au BufRead,BufNewFile *.json set ft=json syntax=json

" Spacebar leader
let mapleader = "\<Space>"

inoremap jk <esc>
nnoremap <backspace> :noh<cr>
nnoremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
nnoremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')
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
nnoremap <leader>break :set wrap! linebreak!<cr>
nnoremap <leader>c "*y
nnoremap <leader>C gg"*yG``
nnoremap <leader>v "*p
nnoremap <leader>V ggVG"*p
nnoremap <leader>indent gg=G``
nnoremap <leader>node :! node % <cr>
nnoremap <leader>runpy :! python3 % <cr>
nnoremap <leader>rot ggg?G``
nnoremap <leader>xxx ggg?GZZ
nnoremap <leader>/ :Commentary<cr>
vnoremap <leader>/ :Commentary<cr>
imap <expr><TAB> neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
xmap <expr><TAB> neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
" nnoremap <silent> <leader>aw :ArgWrap<cr>

syntax on

" Linters
" Run Neomake on write
autocmd! BufWritePost,BufEnter * Neomake
let g:neomake_javascript_enabled_makers = ['eslint']

let g:python3_host_prog = '/usr/local/bin/python3'

" Don't change Haskell lambdas and composition operators to unicode
let g:haskell_conceal = 0

let g:highlightedyank_highlight_duration = 600
" Yggdroot indent guide
" let g:indentLine_char = '│'

let g:pymode_python = 'python3'

" Make { and  } skip closed folds
let g:ip_skipfold=1

" Fucking show json quotes, thanks indentLine
let g:indentLine_noConcealCursor=""
au BufRead,BufNewFile *.json set ft=javascript

" God knows why deoplete isn't enabled at startup
let g:deoplete#enable_at_startup = 1

set autoindent
set cc=80,100,120
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

