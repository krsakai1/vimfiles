" Vim syntax file
" Language: Custom Input Files
" Maintainer: Patrick Greene
" Latest Revision: 25 July 2012

" You must add the line:
"     au BufRead,BufNewFile *.input setfiletype input
" to your vimrc file for this file to work

if exists("b:current_syntax")
   finish
endif

setlocal nospell

syn case ignore 



" Keywords
"setlocal iskeyword+=,
"syn keyword inputKeywords logical, double, integer, float, string,



" Logicals
syn match inputLogical '.true.'
syn match inputLogical '.false.'



" Integers
syn match inputInteger '\<\d\+'
syn match inputInteger '[-+]\d\+'



" Float with decimal point and no E or e
syn match inputFloat '\<\d\+\.\d*'
syn match inputFloat '[-+]\d\+\.\d*'

" Float with E and no decimal point
syn match inputFloat '[-+]\=\d[[:digit:]]*[eE][\-+]\=\d\+'
syn match inputFloat '\<\d[[:digit:]]*[eE][\-+]\=\d\+'

" Float with E and a decimal point
syn match inputFloat '[-+]\=\d[[:digit:]]*\.\d*[eE][\-+]\=\d\+'
syn match inputFloat '\<\d[[:digit:]]*\.\d*[eE][\-+]\=\d\+'



" Double with D or d and no decimal point
syn match inputDouble '[-+]\=\d[[:digit:]]*[dD][\-+]\=\d\+'
syn match inputDouble '\<\d[[:digit:]]*[dD][\-+]\=\d\+'

" Double with D or d and a decimal point
syn match inputDouble '[-+]\=\d[[:digit:]]*\.\d*[dD][\-+]\=\d\+'
syn match inputDouble '\<\d[[:digit:]]*\.\d*[dD][\-+]\=\d\+'



" Comments
syn match inputComment "!.*$"



" Strings
syn region inputString start="="ms=e+1 end="$" contains=ALL keepend





hi def link inputKeywords     Type
hi def link inputInteger      Number
hi def link inputFloat        Float
hi def link inputDouble       Float
hi def link inputComment      Comment
hi def link inputString       String
hi def link inputLogical      Statement

