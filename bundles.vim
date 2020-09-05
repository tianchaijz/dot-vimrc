"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  Plugin Configurations
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let $PLUG = $VIMHOME . "/plug.vim"
source $PLUG


" -----------------------------------------------------------------------------
" YouCompleteMe
" -----------------------------------------------------------------------------
" https://zhuanlan.zhihu.com/p/33046090
set completeopt=menu,menuone

let g:ycm_add_preview_to_completeopt = 0
let g:ycm_show_diagnostics_ui = 0
let g:ycm_server_log_level = 'info'
let g:ycm_min_num_identifier_candidate_chars = 2
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_complete_in_strings=1
let g:ycm_key_invoke_completion = '<c-z>'

noremap <c-z> <NOP>

let g:ycm_semantic_triggers =  {
    \ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
    \ 'cs,lua,javascript': ['re!\w{2}'],
\ }

let g:ycm_global_ycm_extra_conf = $VIMHOME . '/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0

" let g:ycm_extra_conf_globlist = []
" let g:ycm_always_populate_location_list = 0
" let g:ycm_auto_trigger = 1
" let g:ycm_register_as_syntastic_checker = 1
" let g:ycm_enable_diagnostic_highlighting = 0
" let g:ycm_enable_diagnostic_signs = 1
" let g:ycm_show_diagnostics_ui = 1
" let g:ycm_max_diagnostics_to_display = 10000
" let g:ycm_min_num_identifier_candidate_chars = 0
" let g:ycm_min_num_of_chars_for_completion = 2
" let g:ycm_seed_identifiers_with_syntax = 1
" let g:ycm_open_loclist_on_ycm_diags = 1
" let g:ycm_show_diagnostics_ui = 1
" let g:ycm_collect_identifiers_from_tags_files = 1
" let g:ycm_confirm_extra_conf = 0
" let g:ycm_filetype_blacklist = {
"     \ 'vim': 1,
"     \ 'markdown': 1,
" \ }
" let g:ycm_semantic_triggers =  {
"     \ 'c' : ['->', '.','re![_a-zA-z0-9]{2,}'],
"     \ 'cpp' : ['->', '.', '::','re![_a-zA-Z0-9]{2,}'],
" \ }

" YouCompleteMe Omni-Completion
augroup omni_completion
    autocmd!
    autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
    autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
    autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
    autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
    autocmd FileType c setlocal omnifunc=ccomplete#Complete
augroup END

" YouCompleteMe key bindings
nnoremap <F11> :YcmForceCompileAndDiagnostics<CR>
nnoremap <F12> :YcmDiags<CR>

" YcmCompleter Subcommands
nnoremap <silent> <leader>yd :YcmCompleter GetDoc<CR>
nnoremap <silent> <leader>yf :YcmCompleter FixIt<CR>
nnoremap <silent> <leader>yg :YcmCompleter GoTo<CR>
nnoremap <silent> <leader>yi :YcmCompleter GoToInclude<CR>
nnoremap <silent> <leader>yt :YcmCompleter GetType<CR>


" -----------------------------------------------------------------------------
" vim-go
" -----------------------------------------------------------------------------
" https://github.com/fatih/vim-go-tutorial/blob/master/vimrc
let g:go_fmt_command = "goimports"
let g:go_list_type = "quickfix"

let g:go_highlight_types = 1
let g:go_highlight_functions = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_generate_tags = 1
let g:go_gocode_autobuild = 0

" let g:go_debug=['lsp']


" -----------------------------------------------------------------------------
" syntastic
" -----------------------------------------------------------------------------
" https://github.com/scrooloose/syntastic/wiki/C%3A---gcc
let g:syntastic_c_compiler_options = ' -I$(PWD) -I$HOME/lua/include -I/usr/include -I/usr/local/include -L$(PWD) -L/usr/lib -L/usr/local/lib'
let g:syntastic_cpp_compiler = 'gcc'
let g:syntastic_cpp_compiler_options = ' -std=c++11 -I$(PWD) -I$HOME/lua/include -I/usr/include -I/usr/local/include -L$(PWD) -L/usr/lib -L/usr/local/lib'


" -----------------------------------------------------------------------------
" UltiSnips
" -----------------------------------------------------------------------------
let g:UltiSnipsExpandTrigger = '<C-j>'
let g:UltiSnipsJumpForwardTrigger = '<C-j>'
let g:UltiSnipsJumpBackwardTrigger = '<C-k>'
let g:UltiSnipsEditSplit = 'vertical'


" -----------------------------------------------------------------------------
" EasyMotion
" -----------------------------------------------------------------------------
let g:EasyMotion_leader_key = '<leader>'


" -----------------------------------------------------------------------------
" match-up
" -----------------------------------------------------------------------------
" let g:loaded_matchit = 1


" -----------------------------------------------------------------------------
" SuperTab
" -----------------------------------------------------------------------------
let g:SuperTabDefaultCompletionType = '<C-X><C-U>'
let g:SuperTabRetainCompletionType = 2


" -----------------------------------------------------------------------------
" OCaml Merlin
" -----------------------------------------------------------------------------
" opam install ocp-indent merlin
" :execute "helptags " . g:opamshare . "/merlin/vim/doc"
" <C-x><C-o> for completion
" https://github.com/the-lambda-church/merlin/wiki/vim-from-scratch
try
    let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
    execute "set rtp+=" . g:opamshare . "/merlin/vim"
catch
endtry

autocmd FileType ocaml nmap <leader>i :MerlinTypeOf<CR>


" -----------------------------------------------------------------------------
" NERDTree
" -----------------------------------------------------------------------------
let NERDChristmasTree = 0
let NERDTreeWinSize = 30
let NERDTreeChDirMode = 2
let NERDTreeIgnore = ['\~$', '\.pyc$', '\.swp$']
let NERDTreeSortOrder = ['^__\.py$', '\/$', '*', '\.swp$',  '\~$']
let NERDTreeShowBookmarks = 1
let NERDTreeWinPos = 'right'


" -----------------------------------------------------------------------------
" NERDcommenter
" -----------------------------------------------------------------------------
let NERDSpaceDelims = 1
let NERDCompactSexyComs = 1


" -----------------------------------------------------------------------------
" tagbar
" -----------------------------------------------------------------------------
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


" -----------------------------------------------------------------------------
" ctrlp
" -----------------------------------------------------------------------------
set wildignore+=*/tmp/*,*.so,*.o,*.a,*.obj,*.swp,*.zip,*.pyc,*.pyo,*.class
set wildignore+=.DS_Store,*/.git/*,*/.hg/*,*/.svn/*
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe
let g:ctrlp_custom_ignore = {
    \ 'dir': '\v[\/]((node_modules|target|external|gperftools|dist|deps)|\.(swp|ico|git|svn))$',
    \ 'file': '\v\.(exe|so|dll)$',
\ }


" -----------------------------------------------------------------------------
" vim-markology
" -----------------------------------------------------------------------------
let g:markology_include = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"


" -----------------------------------------------------------------------------
" Align
" -----------------------------------------------------------------------------
let g:loaded_AlignMapsPlugin = 1

" Stop Align plugin from forcing its mappings on us
map <leader>a= :Align =<CR>
map <leader>a, :Align ,<CR>
map <leader>a<Bar> :Align <Bar><CR>
map <leader>ap :Align


" -----------------------------------------------------------------------------
" clang-format
" -----------------------------------------------------------------------------
let g:clang_format#code_style = "llvm"
let g:clang_format#style_options = {
    \ "IndentWidth": 4,
    \ "Standard": "Cpp11",
    \ "AllowShortFunctionsOnASingleLine": "false",
    \ "AlwaysBreakTemplateDeclarations": "true",
    \ "AlignEscapedNewlinesLeft": "true",
    \ "ColumnLimit": 80,
    \ "SortIncludes": "false",
\ }

autocmd FileType c,cpp,objc nnoremap <buffer><leader>cf :<C-u>ClangFormat<CR>
autocmd FileType c,cpp,objc vnoremap <buffer><leader>cf :ClangFormat<CR>
autocmd FileType c,cpp,objc nmap <leader>C :ClangFormatAutoToggle<CR>


" -----------------------------------------------------------------------------
" Rainbow parentheses for Lisp and variants
" -----------------------------------------------------------------------------
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


" -----------------------------------------------------------------------------
" vim-latex
" -----------------------------------------------------------------------------
let g:tex_conceal = ''


" -----------------------------------------------------------------------------
" vim-slime
" -----------------------------------------------------------------------------
let g:slime_target = "tmux"
let g:slime_paste_file = tempname()
let g:slime_default_config = {"socket_name": "default", "target_pane": ":"}

autocmd FileType python let g:slime_python_ipython = 1


" -----------------------------------------------------------------------------
" tslime
" -----------------------------------------------------------------------------
vmap <silent> <leader>rs <Plug>SendSelectionToTmux
nmap <silent> <leader>rs <Plug>NormalModeSendToTmux
nmap <silent> <leader>re :Tmux<CR>
nmap <silent> <leader>rv <Plug>SetTmuxVars


" -----------------------------------------------------------------------------
" turbux
" -----------------------------------------------------------------------------
let g:no_turbux_mappings = 1
nmap <leader>rt <Plug>SendFocusedTestToTmux


" -----------------------------------------------------------------------------
" fugitive
" -----------------------------------------------------------------------------
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
nnoremap <space>ga :Git add %:p<CR><CR>
nnoremap <space>gb :Gblame<CR>
nnoremap <space>gc :Gcommit -v -q<CR>
nnoremap <space>gd :Gvdiff<CR>
nnoremap <space>ge :Gedit<CR>
nnoremap <space>gs :Gstatus<CR>


" -----------------------------------------------------------------------------
" vim-gitgutter
" -----------------------------------------------------------------------------
let g:gitgutter_highlight_lines = 0


" -----------------------------------------------------------------------------
" vim-gutentags
" -----------------------------------------------------------------------------
let g:gutentags_project_root = ['.git', '.hg', '.svn', '.root', '.project']
let g:gutentags_ctags_tagfile = '.tags'

let s:vim_tags = expand('~/.cache/tags')
let g:gutentags_cache_dir = s:vim_tags

let g:gutentags_generate_on_write = 0
let g:gutentags_generate_on_missing = 0
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+px']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']

" check if ~/.cache/tags exists
if !isdirectory(s:vim_tags)
   silent! call mkdir(s:vim_tags, 'p')
endif


" -----------------------------------------------------------------------------
" rust
" -----------------------------------------------------------------------------
let g:rustfmt_autosave = 1
let g:rust_cargo_avoid_whole_workspace = 0


" -----------------------------------------------------------------------------
" Keybindings from Emacs
" -----------------------------------------------------------------------------
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


" -----------------------------------------------------------------------------
" Misc
" -----------------------------------------------------------------------------
autocmd BufRead,BufNewFile *.zt set filetype=ztest

nmap <F4> :TagbarToggle<CR>
nmap <F5> :NERDTreeToggle<CR>
nmap <leader>tt :TagbarToggle<CR>
nmap <leader>nt :NERDTreeToggle<CR>
nnoremap <leader>a :Ack<Space>
nnoremap <silent> <leader><Space> :CtrlP<CR>


let g:Lf_ShowDevIcons = 0
let g:Lf_CommandMap = {'<Tab>': ['<ESC>']}
let g:Lf_ShortcutF = '<C-P>'
let g:Lf_RootMarkers = ['.git', '.project', '.root', '.svn']
let g:Lf_WorkingDirectoryMode = 'Ac'
noremap <leader>lb :<C-U><C-R>=printf("Leaderf buffer %s", "")<CR><CR>
noremap <leader>lm :<C-U><C-R>=printf("Leaderf mru %s", "")<CR><CR>
noremap <leader>lt :<C-U><C-R>=printf("Leaderf bufTag %s", "")<CR><CR>
noremap <leader>ll :<C-U><C-R>=printf("Leaderf line %s", "")<CR><CR>

highlight Lf_hl_match gui=bold guifg=Blue cterm=bold ctermfg=21
highlight Lf_hl_matchRefine gui=bold guifg=Magenta cterm=bold ctermfg=201


autocmd FileType rust nmap <leader>cf :!rustfmt %<CR><CR>
