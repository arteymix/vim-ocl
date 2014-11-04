" Vim syntax file
" Language:    OCL
" Maintainer:  Guillaume Poirier-Morency <guillaumepoiriermorency@gmail.com>
" URL:         https://github.com/arteymix/vim-ocl
" Last Change: 2014-11-4
" Filenames:   *.ocl
" Version:     0.0.1
"
" It has basic support for type detection, identifiers and keywords.
"

if exists("b:current_syntax")
    finish
endif

syn keyword oclKeyword inv pre post self nextgroup=oclDelimiter
syn keyword oclContext context nextgroup=oclSelector
syn match oclSelector /[a-zA-Z](::[a-zA-Z])*/ skipwhite nextgroup=oclSeparator,oclType
syn keyword oclType Integer Real Boolean String Collection Bag Set Sequence OrderedSet 
syn match oclIdentifier /[a-zA-Z]/ skipwhite skipempty
syn keyword oclSeparator :
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
