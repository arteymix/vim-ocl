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

if exists('b:current_syntax')
    finish
endif

syn keyword oclKeyword let if then else endif init derive
syn keyword oclContextKeyword context nextgroup=oclSelector
syn keyword oclContractKeyword def body inv pre post
syn keyword oclIdentifierKeyword self result nextgroup=oclAccessorOperator

syn keyword oclAccessorOperator -> .
syn keyword oclArithmeticOperator + - /
syn keyword oclBooleanOperator and or not xor implies
syn keyword oclComparisonOperator <> <= >= < >
syn keyword oclContextOperator :: nextgroup=oclContext

syn keyword oclType Integer Real Boolean String Collection Bag Set Sequence OrderedSet

syn keyword oclIteratorFunction sum iterate exists forAll select reject one any closure nextgroup=oclArguments
syn keyword oclClassFunction allInstances oclType oclIsTypeOf oclIsKindOf nextgroup=oclArguments
syn keyword oclStringFunction concat size toLower toUpper subString nextgroup=oclArguments
syn keyword oclCollectionFunction size includes excludes count includesAll excludesAll isEmpty notEmpty sum asBag asSet asOrderedSet asSequence nextgroup=oclArguments
syn keyword oclSetFunction union intersection including excluding nextgroup=oclArguments
syn keyword oclOrderedSetFunction append prepend insertAt at indexOf first last nextgroup=oclArguments

syn match oclContext /[a-zA-Z]/ nextgroup=oclContextOperator,oclSeparator " context selector
syn match oclFunction /[a-zA-Z]/ nextgroup=oclArguments contained
syn match oclArgument /[a-zA-Z]/ contained

syn region oclArguments start=+(+ end=+)+ contains=oclArgument,oclString,oclIdentifierKeyword
syn keyword oclSeparator : nextgroup=oclType
syn keyword oclDelimiter \| ;

" syn region oclExpression contains=oclString
syn match oclInteger /-?[1-9][0-9]*/
syn match oclReal /-?[1-9][0-9]\.[0-9]*/
syn keyword oclBoolean true false
syn region oclString start=+"+ skip=+\\"+ end=+"+
syn region oclString start=+'+ skip=+\\'+ end=+'+
syn region oclComment start='--' end=/$/ oneline

hi link oclComment Comment

hi link oclString Constant
hi link oclBoolean Constant
hi link oclInteger Constant
hi link oclReal Constant

hi link oclDelimiter Delimiter

hi link oclIteratorFunction Function
hi link oclStringFunction Function
hi link oclClassFunction Function
hi link oclOrderedSetFunction Function
hi link oclSetFunction Function
hi link oclCollectionFunction Function

hi link oclContext Identifier
hi link oclArgument Identifier
hi link oclIdentifier Identifier

hi link oclKeyword Keyword
hi link oclIdentifierKeyword Keyword
hi link oclContextKeyword Keyword
hi link oclContractKeyword Keyword

hi link oclOperator Operator
hi link oclAccessorOperator Operator
hi link oclArithmeticOperator Operator
hi link oclBooleanOperator Operator
hi link oclComparisonOperiator Operator
hi link oclContextOperator Operator

hi link oclType Type
