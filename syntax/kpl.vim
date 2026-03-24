
syn match kplOperator "[~!$%&*\-+=|:'<,>./]"

syn match kplControl "[@#?^]"

syn match kplTodo contained "TODO" contains=@NoSpell
syn match kplCommentLine "\/\/.*$" contains=kplTodo
syn region kplCommentRange start="/\*" end="\*/" contains=kplTodo

syn match kplVar "[a-z]\w*" contains=@NoSpell

syn match kplType "[A-Z]\w*" contains=@NoSpell

syn match kplQualifiers "Const\|Ref\|Shared" contains=@NoSpell

syn match kplSymbol "\.\w\+" contains=@NoSpell

syn match kplKeyword "`\w\+" contains=@NoSpell

syn region kplString start=/"/ skip=/\\\\"/ end=/"/

syn match kplNumber "\d\+"
syn match kplNumber "\d\+\.\d\+"

syn match kplSemicolon ";"

syn match kplList "[()]"

syn match kplAction "[{}]"

syn match kplConditional "\[\|\]"

hi def link kplOperator Operator
hi def link kplControl Special
hi def link kplTodo TODO
hi def link kplCommentLine Comment
hi def link kplCommentRange Comment
hi def link kplVar Ignore
hi def link kplType Type
hi def link kplQualifiers Statement
hi def link kplSymbol Identifier
hi def link kplKeyword Keyword
hi def link kplString String
hi def link kplNumber Number
hi def link kplSemicolon Comment
hi def link kplList Function
hi def link kplAction Function
hi def link kplConditional Special
