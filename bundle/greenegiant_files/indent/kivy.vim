
" Vim indent file
" Language:    Kivy
" Maintainer:  Patrick Greene
" Created:     2014 Jun 20
" Last Change: 2014 Jun 20

if exists("b:did_indent")
   finish
endif
let b:did_indent = 1



setlocal autoindent

setlocal indentexpr=GetKivyIndent(v:lnum)
"setlocal indentkeys+=<:>,=elif,=except

" Only define the function once.
if exists("*GetKivyIndent")
   finish
endif






function GetKivyIndent(lnum)
   " Search backwards for the previous non-empty line.
  let plnum = prevnonblank(v:lnum - 1)

  " Get the previous line
  let pline = getline(plnum)

  " Get previous line indent
  if v:lnum > 0
    let plindent = indent(plnum)
  else
    let plindent = 0
  endif

   " If the previous line ended with a colon, indent this line
   if pline =~ ':\s*$'
      return plindent + shiftwidth()
   endif

   return -1

endfunction


