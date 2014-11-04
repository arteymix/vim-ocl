" Vim syntax file for Object Constraint Language
"
" Language: OCL
" Maintainer: Guillaume Poirier-Morency
" Last Change:
" Version:
"
"
"
if exists("b:current_syntax")
    finish
endif

syn keyword oclKeyword inv pre post self nextgroup=oclDelimiter
syn keyword oclContext context nextgroup=oclSelector
syn match oclSelector /[a-zA-Z](::[a-zA-Z])*/ skipwhite nextgroup=oclType
syn keyword oclType Integer Real Boolean String Collection Bag Set Sequence OrderedSet 
syn match oclIdentifier /[a-zA-Z]/ skipwhite skipempty
syn keyword oclDelimiter \| -> . ;
syn region oclString start=+"+ skip=+\\"+ end=+"+
syn region oclString start=+'+ skip=+\\'+ end=+'+
syn region oclComment start='--' end=/$/ oneline

hi link oclKeyword Keyword
hi link oclContext Keyword
hi link oclIdentifier Identifier
hi link oclSelector Identifier
hi link oclDelimiter Delimiter
hi link oclType Type
hi link oclString Constant
hi link oclComment Comment
