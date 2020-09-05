"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  Plug
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')


" -----------------------------------------------------------------------------
" Code completions
" -----------------------------------------------------------------------------
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer --go-completer' }
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
Plug 'ludovicchabant/vim-gutentags'
Plug 'Raimondi/delimitMate'
Plug 'ervandew/supertab'


" -----------------------------------------------------------------------------
" Snippets
" -----------------------------------------------------------------------------
Plug 'SirVer/ultisnips', { 'commit': '9f240ec51b58a7c0d572c7499cea5b80839bb04b' }
Plug 'honza/vim-snippets'


" -----------------------------------------------------------------------------
" Fast navigation
" -----------------------------------------------------------------------------
Plug 'Lokaltog/vim-easymotion'
" Plug 'andymass/vim-matchup'


" -----------------------------------------------------------------------------
" Alignment
" -----------------------------------------------------------------------------
Plug 'godlygeek/tabular'
Plug 'vim-scripts/Align'


" -----------------------------------------------------------------------------
" Surround
" -----------------------------------------------------------------------------
Plug 'tpope/vim-surround'


" -----------------------------------------------------------------------------
" IDE features
" -----------------------------------------------------------------------------
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeFind', 'NERDTreeToggle'] }
Plug 'scrooloose/nerdcommenter'
" Plug 'majutsushi/tagbar'
Plug 'mileszs/ack.vim'
Plug 'rking/ag.vim'
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
Plug 'bling/vim-airline'
Plug 'scrooloose/syntastic'
Plug 'bronson/vim-trailing-whitespace'
Plug 'fholgado/minibufexpl.vim'
Plug 'Chiel92/vim-autoformat'
Plug 'jeetsukumaran/vim-markology'
Plug 'rhysd/vim-clang-format'
Plug 'let-def/ocp-indent-vim'
Plug 'kien/rainbow_parentheses.vim'
Plug 'vim-scripts/Mark'

Plug 'lepture/vim-jinja'
Plug 'tpope/vim-haml'
Plug 'jcf/vim-latex', { 'for': 'latex' }
Plug 'fatih/vim-go', { 'for': 'go' }
Plug 'tell-k/vim-autopep8', { 'for': 'python' }
Plug 'vim-scripts/haskell.vim'
Plug 'wlangstroth/vim-racket'
Plug 'vim-scripts/VimClojure'
Plug 'rosstimson/scala-vim-support'
Plug 'pbrisbin/html-template-syntax'
Plug 'mzlogin/vim-markdown-toc' | Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
" Plug 'rust-lang/rust.vim'

Plug 'w0rp/ale'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'

Plug 'HerringtonDarkholme/yats.vim'

let g:ale_linters = {
\   'javascript': ['eslint'],
\   'typescript': ['tsserver', 'tslint'],
\}

let g:ale_fixers = {
\   'javascript': ['eslint'],
\   'typescript': ['prettier'],
\   'vue': ['eslint'],
\   'scss': ['prettier'],
\   'html': ['prettier']
\}

let g:ale_fix_on_save = 1
let g:ale_linter_aliases = {'typescriptreact': 'typescript'}


Plug 'prettier/vim-prettier', {
\ 'do': 'yarn install',
\ 'branch': 'release/0.x'
\ }

autocmd FileType typescript setlocal formatprg=prettier\ --parser\ typescript


" -----------------------------------------------------------------------------
" Git
" -----------------------------------------------------------------------------
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'


" -----------------------------------------------------------------------------
" Tmux
" -----------------------------------------------------------------------------
Plug 'jpalardy/vim-slime'
Plug 'jgdavey/tslime.vim'
Plug 'jgdavey/vim-turbux'
Plug 'christoomey/vim-tmux-navigator'


" -----------------------------------------------------------------------------
" Color schemes
" -----------------------------------------------------------------------------
Plug 'jdevera/vim-cs-explorer'
Plug 'rickharris/vim-blackboard'
Plug 'altercation/vim-colors-solarized'
Plug 'rickharris/vim-monokai'
Plug 'tpope/vim-vividchalk'
Plug 'Lokaltog/vim-distinguished'
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'fisadev/fisa-vim-colorscheme'
Plug 'octol/vim-cpp-enhanced-highlight'


" -----------------------------------------------------------------------------
" Others
" -----------------------------------------------------------------------------
Plug 'xolox/vim-misc'
Plug 'vim-scripts/DrawIt'
Plug 'vim-scripts/AutoFenc.vim' " detect file encoding
Plug 'ConradIrwin/vim-bracketed-paste'


call plug#end()
