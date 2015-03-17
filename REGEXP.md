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
