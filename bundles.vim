" Let Vundle manage Vundle
" Required!
Plugin 'gmarik/Vundle.vim'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Code completions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'Shougo/neocomplcache'
Plugin 'mattn/emmet-vim'
Plugin 'Raimondi/delimitMate'
Plugin 'ervandew/supertab'

" => snippets
Plugin 'SirVer/ultisnips'
Plugin 'tianchaijz/vim-snippets'

"-----------------
" => neocomplcache
"-----------------
set completeopt-=preview
let g:neocomplcache_enable_at_startup = 1
let g:neoComplcache_disableautocomplete = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
let g:neocomplcache_enable_underbar_completion = 1
let g:neocomplcache_enable_camel_case_completion = 1

" Enable omni completion
augroup omni_completion
    autocmd!
    autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
    autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
    autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
    autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
    autocmd FileType c setlocal omnifunc=ccomplete#Complete
augroup END

" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default' : '',
    \ 'python' : $VIMHOME . '/bundle/Pydiction/complete-dict',
\ }

if !exists('g:neocomplcache_omni_patterns')
    let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.erlang = '[a-zA-Z]\|:'

"-----------------
" => supertab
"-----------------
let g:SuperTabDefaultCompletionType = '<C-X><C-U>'
let g:SuperTabRetainCompletionType = 2

"-----------------
" => ultisnips
"-----------------
let g:UltiSnipsExpandTrigger = '<C-j>'
let g:UltiSnipsJumpForwardTrigger = '<C-j>'
let g:UltiSnipsJumpBackwardTrigger = '<C-k>'
let g:UltiSnipsEditSplit = 'vertical'


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
Plugin 'junegunn/vim-easy-align'
Plugin 'godlygeek/tabular'
Plugin 'vim-scripts/Align'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'tpope/vim-repeat'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'michaeljsmith/vim-indent-object'

" => Detect file encoding
Plugin 'vim-scripts/AutoFenc.vim'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" IDE features
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'majutsushi/tagbar'
Plugin 'mileszs/ack.vim'
Plugin 'rking/ag.vim'
Plugin 'kien/ctrlp.vim'
Bundle 'xolox/vim-misc'
Bundle 'xolox/vim-easytags'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/syntastic'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'Yggdroot/indentLine'
Plugin 'AndrewRadev/splitjoin.vim'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'Chiel92/vim-autoformat'
Plugin 'jeetsukumaran/vim-markology'
Plugin 'vim-scripts/Mark'

" => Slime & Tmux
Plugin 'jpalardy/vim-slime'
Plugin 'jgdavey/tslime.vim'
Plugin 'jgdavey/vim-turbux'
Plugin 'christoomey/vim-tmux-navigator'

"-----------------
" => nerdtree
"-----------------
let NERDChristmasTree = 0
let NERDTreeWinSize = 30
let NERDTreeChDirMode = 2
let NERDTreeIgnore = ['\~$', '\.pyc$', '\.swp$']
let NERDTreeSortOrder = ['^__\.py$', '\/$', '*', '\.swp$',  '\~$']
let NERDTreeShowBookmarks = 1
let NERDTreeWinPos = 'right'

"-----------------
" => nerdcommenter
"-----------------
let NERDSpaceDelims = 1
let NERDCompactSexyComs = 1

"-----------------
" => tagbar
"-----------------
let g:tagbar_left = 1
let g:tagbar_width = 30
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
set wildignore+=*/tmp/*,*.so,*.o,*.a,*.obj,*.swp,*.zip,*.pyc,*.pyo,*.class
set wildignore+=.DS_Store,*/.git/*,*/.hg/*,*/.svn/*
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe
let g:ctrlp_custom_ignore = {
    \ 'dir': '\v[\/](node_modules|target|dist|deps)|(\.(swp|ico|git|svn))$',
    \ 'file': '\v\.(exe|so|dll)$',
\ }

"-----------------
" => indentLine
"-----------------
let g:indentLine_color_term = 239
let g:indentLine_char = '|'

"-----------------
" => vim-markology
"-----------------
let g:markology_include = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"


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
Plugin 'vim-scripts/Python-Syntax-Folding'
Plugin 'vim-scripts/Pydiction'
Plugin 'nvie/vim-flake8'
Plugin 'hynek/vim-python-pep8-indent'
Plugin 'tell-k/vim-autopep8'

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
au BufRead,BufNewFile *.py let g:pydiction_location = $VIMHOME . '/bundle/Pydiction/complete-dict'

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

"-----------------
" => vim-latex
"-----------------
let g:tex_conceal = ''

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
" Misc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'vim-scripts/DrawIt'


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
nnoremap <F10> :set number! number?<CR>
nnoremap <leader>a :Ack
nnoremap <leader>v V`]

"-----------------
" => text alignment
"-----------------
" Stop Align plugin from forcing its mappings on us
let g:loaded_AlignMapsPlugin = 1
" Align on equal signs
map <leader>a= :Align =<CR>
" Align on commas
map <leader>a, :Align ,<CR>
" Align on pipes
map <leader>a<bar> :Align <bar><CR>
" Prompt for align character
map <leader>ap :Align

" Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

"-----------------
" => vim-slime
"-----------------
let g:slime_target = "tmux"
let g:slime_paste_file = tempname()
let g:slime_default_config = {"socket_name": "default", "target_pane": ":"}
autocmd FileType python let g:slime_python_ipython = 1

"-----------------
" => tslime
"-----------------
vmap <silent> <leader>rs <Plug>SendSelectionToTmux
nmap <silent> <leader>rs <Plug>NormalModeSendToTmux
nmap <silent> <leader>re :Tmux<CR>
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

" Hide messy Ggrep output and copen automatically
func! NonintrusiveGitGrep(term)
    exe "copen"
    " Map 't' to open selected item in new tab
    exe "nnoremap <silent> <buffer> t <C-W><CR><C-W>T"
    exe "silent! Ggrep " . a:term
    exe "redraw!"
endfunc

func! CommittedFiles()
    " Clear quickfix list
    let qf_list = []
    " Find files committed in HEAD
    let git_output = system("git diff-tree --no-commit-id --name-only -r HEAD\n")
    for committed_file in split(git_output, "\n")
        let qf_item = {'filename': committed_file}
        call add(qf_list, qf_item)
    endfor
    " Fill quickfix list with them
    call setqflist(qf_list, '')
endfunc

command! -nargs=1 GGrep call NonintrusiveGitGrep(<q-args>)
nmap <leader>gs :Gstatus<CR>
nmap <leader>gg :copen<CR>:GGrep
nmap <leader>gl :Extradite!<CR>
nmap <leader>gd :Gdiff<CR>
nmap <leader>gb :Gblame<CR>

" Show list of last-committed files
nnoremap <silent> <leader>g? :call CommittedFiles()<CR>:copen<CR>

"-----------------
" => vim-gitgutter
"-----------------
let g:gitgutter_highlight_lines = 0

"-----------------
" => ctrlp
"-----------------
nnoremap <silent> <leader><Space> :CtrlP<CR>

"-----------------
" => keybindings from Emacs
"-----------------
" https://github.com/maxbrunsfeld/vim-emacs-bindings
func! s:home()
    let start_col = col('.')
    normal! ^
    if col('.') == start_col
        normal! 0
    endif
    return ''
endfunc

func! s:kill_line()
    let [text_before_cursor, text_after_cursor] = s:split_line_text_at_cursor()
    if len(text_after_cursor) == 0
        normal! J
    else
        call setline(line('.'), text_before_cursor)
    endif
    return ''
endfunc

func! s:split_line_text_at_cursor()
    let line_text = getline(line('.'))
    let text_after_cursor = line_text[col('.')-1 :]
    let text_before_cursor = (col('.') > 1) ? line_text[: col('.')-2] : ''
    return [text_before_cursor, text_after_cursor]
endfunc

" Insert mode
imap <C-b> <Left>
imap <C-f> <Right>
imap <C-a> <C-o>:call <SID>home()<CR>
imap <C-e> <End>
imap <C-d> <Del>
imap <C-h> <BS>
imap <C-k> <C-r>=<SID>kill_line()<CR>

" Command line mode
cmap <C-p> <Up>
cmap <C-n> <Down>
cmap <C-b> <Left>
cmap <C-f> <Right>
cmap <C-a> <Home>
cmap <C-e> <End>
cnoremap <C-d> <Del>
cnoremap <C-h> <BS>
cnoremap <C-k> <C-f>D<C-c><C-c>:<Up>
