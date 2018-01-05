"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  Plug
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')


" -----------------------------------------------------------------------------
" Code completions
" -----------------------------------------------------------------------------
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer --gocode-completer' }
Plug 'Raimondi/delimitMate'
Plug 'ervandew/supertab'


" -----------------------------------------------------------------------------
" Snippets
" -----------------------------------------------------------------------------
Plug 'SirVer/ultisnips'
Plug 'tianchaijz/vim-snippets'


" -----------------------------------------------------------------------------
" Fast navigation
" -----------------------------------------------------------------------------
Plug 'Lokaltog/vim-easymotion'


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
Plug 'majutsushi/tagbar'
Plug 'mileszs/ack.vim'
Plug 'rking/ag.vim'
Plug 'kien/ctrlp.vim'
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
Plug 'pangloss/vim-javascript'
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


" -----------------------------------------------------------------------------
" Git
" -----------------------------------------------------------------------------
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'


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


" -----------------------------------------------------------------------------
" Others
" -----------------------------------------------------------------------------
Plug 'xolox/vim-misc'
Plug 'vim-scripts/DrawIt'
Plug 'vim-scripts/AutoFenc.vim' " detect file encoding


call plug#end()
