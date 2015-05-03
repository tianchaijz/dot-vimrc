Vim Regular Expression
======================

Picked from [Vim Regular Expression Special Characters: To Escape or Not To
Escape](http://jeetworks.org/vim-regular-expression-special-characters-to-escape-or-not-to-escape/)

## Special Characters: To Escape or Not To Escape

### Special Characters Not Requiring Escaping
The following special characters are interpreted as regular expression operators
without escaping (escaping will result in them being interpreted as literals):

Special Characters | Description
:----------------- | :----------
\                  | Escape next character (use "\\" for literal backslash)
^                  | Start-of-line (at start of pattern)
$                  | End-of-line
.                  | Matches any character
*                  | Matches 0 or more occurrences of the previous atom
~                  | Matches last given substitute string
[...]              | Matches any of the characters given within the brackets
[^...]             | Matches any character not given within the brackets
&                  | In replacement pattern: insert the whole matched search pattern

### Special Characters Requiring Escaping
The following special characters are interpreted as regular expression operators
only when escaped (otherwise they will be interpreted as literals):

Special Characters | Description
:----------------- | :----------
\\<                | Matches beginning of a word (left word break/boundary)
\\>                | Matches end of a word (right word break/boundary)
\\(...\\)          | Grouping into an atom
\\\|               | Separating alternatives
\\_.               | Matches any single character or end-of-line
\\+                | 1 or more of the previous atom (greedy)
\\=                | 0 or one of the previous atom (greedy)
\\?                | 0 or one of the previous atom (greedy)
\\{                | Multi-item count match specification (greedy, `:h \{`)
\\{-               | Multi-item count match specification (non-greedy)


## Some Examples of `:g` Usage

``` vim
" http://www.softpanorama.org/Editors/Vimorama/vim_regular_expressions.shtml
" http://www.networkcomputing.com/unixworld/tutorial/009/009.html

" delete all empty lines in a file
:g/^$/d

" choose your own search pattern delimiter
:g+///+d
:g]///]d

" reduce multiple blank lines to a single blank
:g/^$/,/./-j

" reverse the order of the lines starting from the line 10 up to the line 20
:10,20 g/^/mo 10

" in the text block marked by 'a and 'b find all the lines starting with Error
" and copy (append) them to "errors.txt" file, note: . (current line address) in
" front of the w is very important, omitting it will cause :write to write the
" whole file to "errors.txt" for every Error line found
:'a,'b g/^Error/. w >> errors.txt

" you can give multiple commands after :g using "|" (:h :bar) as a separator, if
" you want to use "|" in an argument, precede it with "\"
:g/^Error:/copy $ | s/Error/copy of the error/

" here the order is reversed: first modify the string then copy to the end
:g/^Error:/s/Error/copy of the error/ | copy $

" it goes to each line that begins with two capital X's, then copies the line
" just before that one to the end of the file, and finally goes forward to the
" next line that ends with two capital Z's and deletes that line and the five
" lines that follow it
:g/^XX/- copy $ | /ZZ$/,+5 d

" this :g starts off by marking every line, when it goes to line 1, the command
" it executes will delete line 2, the next undeleted marked line is line 3,
" where its command deletes line 4, and so on, or if you want to delete
" two-thirds of the lines in your file, type:
:g/^/+,++ d
```
