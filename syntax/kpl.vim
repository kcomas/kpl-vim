
syn match kplTodo contained "TODO" contains=@NoSpell
syn match kplCommentLine "\/\/.*$" contains=kplTodo
syn region kplCommentRange start="/\*" end="\*/" contains=kplTodo

syn match kplVar "[a-z]\w\{1,39\}" contains=@NoSpell

syn match kplType "[A-Z]\w\{1,39\}" contains=@NoSpell

syn match kplQualifiers "Const\|Ref\|Shared\|Namespace\|Mutex" contains=@NoSpell

syn match kplSymbol "`\w\{1,40\}" contains=@NoSpell

syn match kplNamespace "\.\w\{1,40\}" contains=@NoSpell

syn region kplString start=/"/ skip=/\\\\"/ end=/"/

syn match kplCommand "\\\w\{1,40\}" contains=@NoSpell

syn match kplBool "true\|TRUE\|false\|FALSE" contains=@NoSpell

syn match kplCall "\zs[a-z]\w\{1,39\}\ze("

hi def link kplTodo TODO
hi def link kplCommentLine Comment
hi def link kplCommentRange Comment
hi def link kplVar Ignore
hi def link kplType Type
hi def link kplQualifiers Constant
hi def link kplSymbol Identifier
hi def link kplNamespace Special
hi def link kplString String
hi def link kplCommand PreProc
hi def link kplBool Boolean
hi def link kplCall Function
