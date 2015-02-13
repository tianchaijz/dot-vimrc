tianchaijz's Vim configuration
==================

This Vim configuration is well organized and with many features, you will soon
be used to it.

## Installation / Upgrading

One command does it all.

    curl -o - https://raw.githubusercontent.com/tianchaijz/dot-vimrc/master/install.sh | sh

Don't worry, it will back up your existing Vim configuration.

## Keybindings

These keybindings organized into logical groups to help you
remember them.

### Running Things

If you open a tmux terminal alongside Vim then you can run commands,
tests, and a REPL from your Vim selections.

#### tslime
Key           | Action
:------------ | :-------
,rs           | Send selected text to tmux
,rv           | Change tmux session, window, and pane attachment
,rT           | Run all tests in open feature
,rt           | Run test under cursor

#### vim-slime
Key           | Action
:------------ | :-------
C-c C-c       | Send selected text to tmux
C-c v         | Change tmux session, window, and pane attachment

### Tags
Key           | Action
:------------ | :-------
,tu           | Generate or update ctags
,tt           | Open list of methods, classes, etc

### Git
Key           | Action
:------------ | :-------
,g?           | Last-committed files (Monday morning key)
,gs           | Git status (fugitive)
,gg           | Git grep
,gl           | Git log (extradition)
,gd           | Git diff
,gb           | Git blame

### Aligning
Key           | Action
:------------ | :-------
,a=           | Align on equal signs
,a,           | Align on commas
,a\|          | Align on vertical bar
,ap           | Align on character of your choice

### Selection
Key           | Action
:------------ | :-------
vai           | Select whole block at indentation
vii           | Select inside block at indentation
var           | Select whole Ruby block
vir           | Select inside Ruby block

### Conversion
Key           | Action
:------------ | :-------
,2s           | Convert symbol under cursor from symbol to string
,2y           | Convert string under cursor from string to symbol
,2\_          | Convert string under cursor to snake_case
,2c           | Convert string under cursor to camelCase
,2m           | Convert string under cursor to MixedCase
,2u           | Convert string under cursor to SNAKE_UPPERCASE
,2-           | Convert string under cursor to dash-case

### Splits and find file
Key           | Action
:------------ | :-------
,\<space\>    | Fuzzy file find (C-p)
,sj           | Open split below
,sk           | Open split above
,sh           | Open split leftward
,sl           | Open split rightward

### Misc
Key           | Action
:------------ | :-------
,u            | Interactive undo tree
,ss           | Enable spell checking
,hc           | Toggle highlighting of current column
,e            | Open file prompt with current path
,\<cr\>       | Clear search highlights
,r            | Redraw screen
Q             | Move previous tab or buffer
W             | Move next tab or buffer
gS            | Split a one-liner into multiple lines
gJ            | Join a block into a single-line statement
C-h/j/k/l     | Moving between spilt windows
C-p           | Toggle ctrlp
Alt-1~9       | Switch between multiple buffers
:Ack or ,a    | Toggle Ack searching
,c\<space\>   | Toggle comment
F2            | Toggle paste
F3            | Toggle Indent Guides
F4            | Toggle tagbar
F5            | Toggle Nerd-Tree file viewer
F10           | Toggle line number


## Dependencies
Compile Vim with `--enable-pythoninterp` and `--enable-rubyinterp` to enable powerful syntax completion supplied by neocomplcache.

For `Mac OS X`,

``` bash
brew install macvim --override-system-vim
brew install ack ctags
```

For `Arch Linux`,

``` bash
yaourt -S gvim
yaourt -S ack ctags
```

## Tutorial
Just refer help docs, like:

``` vim
:help text-objexts
:help surround
:help tabular
```

## Syntax Check
For syntax check tools:

Languages    | Lint Tools    | Install guide
------------ | ------------- | ------------
C            | gcc           | built-in
CPP          | g++           | built-in
CoffeeScript | coffee        | `npm install -g coffeelint`
CSS          | csslint       | `npm install -g csslint`
Erlang       | escript       | built-in
Go           | go            | built-in
Haml         | haml          | built-in
Haskell      | ghc-mod       | `cabal install ghc-mod`
HTML         | tidy          | built-in
Java         | javac         | built-in
Javascript   | jshint        | `npm install -g jshint`
Json         | jsonlint      | `npm install -g jsonlint`
Less         | lessc         | built-in
Lisp         | clisp         | built-in
Lua          | luac          | built-in
Perl         | perl          | built-in
PHP          | php           | built-in
Puppet       | puppet        | built-in
Python       | pyflakes      | `sudo pip install pyflakes`
Ruby         | ruby          | built-in
Scala        | scala         | built-in
Sass         | sass          | built-in
Scss         | scss/compass  | `gem install compass`
XML          | xmllint       | built-in
YAML         | js-yaml       | `npm install -g js-yaml`

## How to manage this dot-vimrc?
All plugins are listed in `bundles.vim` with detailed comments, just add plugins as you like.

1. `:PluginClean` to clean up unused plugins
2. `:PluginInstall` to install newly added plugins
3. `:PluginUpdate` to upgrade all plugins

Other configurations are also well organized in vimrc.

If you want to synchronize with my configuration, just run `install.sh` again.

Happy coding with Vim!
