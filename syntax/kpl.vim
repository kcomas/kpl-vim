
syn match kplOperator "[~!@#$%^&*\-+=|:'<,>?/]"

syn match kplTodo contained "TODO" contains=@NoSpell
syn match kplCommentLine "\/\/.*$" contains=kplTodo
syn region kplCommentRange start="/\*" end="\*/" contains=kplTodo

syn match kplIgnore "_\w\{0,39\}" contains=@NoSpell

syn match kplVar "[a-z]\w\{0,39\}" contains=@NoSpell

syn match kplType "[A-Z]\w\{0,39\}" contains=@NoSpell

syn match kplQualifiers "Const\|Ref\|Shared\|Namespace\|Mutex" contains=@NoSpell

syn match kplSymbol "`\w\{1,40\}" contains=@NoSpell

syn match kplNamespace "\.\w\{1,40\}" contains=@NoSpell

syn region kplString start=/"/ skip=/\\\\"/ end=/"/

syn match kplCommand "\\\w\{1,40\}" contains=@NoSpell

syn match kplNumber "\d\+"
syn match kplNumber "\d\+\.\d*"

syn match kplBool "true\|TRUE\|false\|FALSE" contains=@NoSpell

syn match kplCall "[()]"

syn match kplSemicolon ";"

hi def link kplOperator Operator
hi def link kplTodo TODO
hi def link kplCommentLine Comment
hi def link kplCommentRange Comment
hi def link kplIgnore Comment
hi def link kplVar Ignore
hi def link kplType Type
hi def link kplQualifiers Repeat
hi def link kplSymbol Identifier
hi def link kplNamespace Special
hi def link kplString String
hi def link kplCommand Conditional
hi def link kplNumber Number
hi def link kplBool Boolean
hi def link kplCall Function
hi def link kplSemicolon Comment
