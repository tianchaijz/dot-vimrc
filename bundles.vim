" Let Vundle manage Vundle
" Required!
Plugin 'gmarik/vundle'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Code completions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'Shougo/neocomplcache'
Plugin 'mattn/emmet-vim'
Plugin 'Raimondi/delimitMate'
Plugin 'ervandew/supertab'

" => snippets
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

"-----------------
" => neocomplcache
"-----------------
set completeopt-=preview
let g:neocomplcache_enable_at_startup=1
let g:neoComplcache_disableautocomplete=1
let g:neocomplcache_enable_smart_case=1
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
let g:neocomplcache_enable_underbar_completion = 1
let g:neocomplcache_enable_camel_case_completion = 1

if !exists('g:neocomplcache_omni_patterns')
    let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.erlang = '[a-zA-Z]\|:'

"-----------------
" => supertab
"-----------------
let g:SuperTabDefaultCompletionType = '<C-X><C-U>'
let g:SuperTabRetainCompletionType=2

"-----------------
" => ultisnips
"-----------------
let g:UltiSnipsExpandTrigger = "<Tab>"
let g:UltiSnipsJumpForwardTrigger = "<C-j>"
let g:UltiSnipsJumpBackwardTrigger = "<C-k>"
let g:UltiSnipsEditSplit = "vertical"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Fast navigation
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'edsono/vim-matchit'
Plugin 'Lokaltog/vim-easymotion'

"-----------------
" => easymotion
"-----------------
let g:EasyMotion_leader_key = '<leader>'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Fast editing
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'tpope/vim-surround'
Plugin 'sjl/gundo.vim'
Plugin 'godlygeek/tabular'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'tpope/vim-repeat'
Plugin 'vim-scripts/Align'
Plugin 'terryma/vim-multiple-cursors'

" => Detect file encoding
Plugin 'vim-scripts/AutoFenc.vim'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" IDE features
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'majutsushi/tagbar'
Plugin 'mileszs/ack.vim'
Plugin 'kien/ctrlp.vim'
Bundle 'xolox/vim-misc'
Bundle 'xolox/vim-easytags'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/syntastic'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'Yggdroot/indentLine'
Plugin 'fholgado/minibufexpl.vim'

" => Slime & Tmux
Plugin 'jgdavey/tslime.vim'
Plugin 'jgdavey/vim-turbux'
Plugin 'christoomey/vim-tmux-navigator'

"-----------------
" => nerdtree
"-----------------
let NERDChristmasTree=0
let NERDTreeWinSize=30
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
let NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$',  '\~$']
let NERDTreeShowBookmarks=1
let NERDTreeWinPos = "right"

"-----------------
" => nerdcommenter
"-----------------
let NERDSpaceDelims=1
let NERDCompactSexyComs=1

"-----------------
" => tagbar
"-----------------
let g:tagbar_left=1
let g:tagbar_width=30
let g:tagbar_autofocus = 1
let g:tagbar_sort = 0
let g:tagbar_compact = 1

" help doc -> tagbar.txt && ctags config file
let g:tagbar_type_lua = {
    \ 'ctagstype' : 'LUAA',
    \ 'kinds' : [
        \ 'f:functions',
        \ 'v:variables',
    \ ],
\ }

if executable('coffeetags')
    let g:tagbar_type_coffee = {
        \ 'ctagsbin' : 'coffeetags',
        \ 'ctagsargs' : '',
        \ 'kinds' : [
        \ 'f:functions',
        \ 'o:object',
        \ ],
        \ 'sro' : ".",
        \ 'kind2scope' : {
        \ 'f' : 'object',
        \ 'o' : 'object',
        \ }
    \ }
endif

let g:tagbar_type_markdown = {
    \ 'ctagstype' : 'markdown',
    \ 'sort' : 0,
    \ 'kinds' : [
        \ 'h:sections'
    \ ]
\ }

"-----------------
" => easy-tags
"-----------------
" Prevent automatic ctag updates
let g:easytags_auto_update = 0
let g:easytags_auto_highlight = 0
let g:easytags_on_cursorhold = 0

" Generate tags manually
nmap <leader>tu :UpdateTags<CR>

" Scan recursively, not just current file
let g:easytags_autorecurse = 1
" Follow symbolic links
let g:easytags_resolve_links = 1

"-----------------
" => ctrlp
"-----------------
set wildignore+=*/tmp/*,*.so,*.o,*.a,*.obj,*.swp,*.zip,*.pyc,*.pyo,*.class,.DS_Store
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'
let g:ctrlp_max_files=0

"-----------------
" => indentLine
"-----------------
let g:indentLine_color_term = 239
let g:indentLine_char = '|'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Syntax/Indent for language enhancement
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Web Backend
Plugin '2072/PHP-Indenting-for-VIm'
Plugin 'lepture/vim-jinja'
" Plugin 'digitaltoad/vim-jade'
" Plugin 'tpope/vim-rails'

" => Web Frontend
Plugin 'othree/html5.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'kchmck/vim-coffee-script'
Plugin 'nono/jquery.vim'
Plugin 'tpope/vim-haml'
" Plugin 'groenewege/vim-less'
" Plugin 'wavded/vim-stylus'
" Plugin 'nono/vim-handlebars'

" => Python
Plugin 'vim-scripts/Pydiction'
Plugin 'nvie/vim-flake8'

" => Markup Language
Plugin 'plasticboy/vim-markdown'

" => LaTeX
Plugin 'jcf/vim-latex'

" => Ruby
" Plugin 'tpope/vim-endwise'

" => Go
Plugin 'fatih/vim-go'

" => FPs
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'wlangstroth/vim-racket'
Plugin 'vim-scripts/VimClojure'
Plugin 'rosstimson/scala-vim-support'

" => Haskell stuff
Plugin 'vim-scripts/haskell.vim'
Plugin 'pbrisbin/html-template-syntax'

"-----------------
" => Pydiction
"-----------------
au BufRead,BufNewFile *.py let g:pydiction_location = '~/.vim/bundle/Pydiction/complete-dict'

"-----------------
" => Rainbow parentheses for Lisp and variants
"-----------------
let g:rbpt_max = 16
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
\ ]

autocmd Syntax lisp,scheme,clojure,racket RainbowParenthesesToggle


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Color schemes
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'jdevera/vim-cs-explorer'
Plugin 'ColorSchemeMenuMaker'
Plugin 'rickharris/vim-blackboard'
Plugin 'altercation/vim-colors-solarized'
Plugin 'rickharris/vim-monokai'
Plugin 'tpope/vim-vividchalk'
Plugin 'Lokaltog/vim-distinguished'
Plugin 'chriskempson/vim-tomorrow-theme'
Plugin 'fisadev/fisa-vim-colorscheme'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin keybindings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"-----------------
" => Gundo
"-----------------
let g:gundo_width = 50
let g:gundo_preview_height = 20
let g:gundo_right = 0

" Show undo tree
nmap <silent> <leader>u :GundoToggle<CR>

"-----------------
" => paste, nerdtree, tagbar
"-----------------
set pastetoggle=<F2>

nmap <leader>tt :TagbarToggle<CR>
nmap <F3> :IndentGuidesToggle<CR>
nmap <F4> :TagbarToggle<CR>
nmap <F5> :NERDTreeToggle<CR>
nnoremap <leader>a :Ack
nnoremap <leader>v V`]

"-----------------
" => Align
"-----------------
" Stop Align plugin from forcing its mappings on us
let g:loaded_AlignMapsPlugin=1
" Align on equal signs
map <leader>a= :Align =<CR>
" Align on commas
map <leader>a, :Align ,<CR>
" Align on pipes
map <leader>a<bar> :Align <bar><CR>
" Prompt for align character
map <leader>ap :Align

"-----------------
" => tslime
"-----------------
vmap <silent> <leader>rs <Plug>SendSelectionToTmux
nmap <silent> <leader>rs <Plug>NormalModeSendToTmux
nmap <silent> <leader>rv <Plug>SetTmuxVars

"-----------------
" => turbux
"-----------------
let g:no_turbux_mappings = 1
nmap <leader>rT <Plug>SendTestToTmux
nmap <leader>rt <Plug>SendFocusedTestToTmux

"-----------------
" => fugitive
"-----------------
let g:extradite_width = 60

"-----------------
" => vim-gitgutter
"-----------------
let g:gitgutter_highlight_lines = 0

" Hide messy Ggrep output and copen automatically
function! NonintrusiveGitGrep(term)
    execute "copen"
    " Map 't' to open selected item in new tab
    execute "nnoremap <silent> <buffer> t <C-W><CR><C-W>T"
    execute "silent! Ggrep " . a:term
    execute "redraw!"
endfunction

command! -nargs=1 GGrep call NonintrusiveGitGrep(<q-args>)
nmap <leader>gs :Gstatus<CR>
nmap <leader>gg :copen<CR>:GGrep
nmap <leader>gl :Extradite!<CR>
nmap <leader>gd :Gdiff<CR>
nmap <leader>gb :Gblame<CR>

"-----------------
" => ctrlp
"-----------------
nnoremap <silent> <leader><Space> :CtrlP<CR>
