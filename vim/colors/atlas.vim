" atlas.vim
" Author:  Nick Platt <platt.nicholas@gmail.com>
" License: MIT <http://opensource.org/licenses/MIT>

set background=dark

highlight clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'atlas'

" Foreground: 235 [ 238 244 250 ] 253

""" Interface
"ighlight ColorColumn                ctermfg=000     ctermbg=000      cterm=none
"ighlight Conceal                    ctermfg=000     ctermbg=000      cterm=none
"ighlight Cursor                     ctermfg=000     ctermbg=000      cterm=none
"ighlight CursorColumn               ctermfg=000     ctermbg=000      cterm=none
"ighlight CursorIM                   ctermfg=000     ctermbg=000      cterm=none
highlight CursorLine                 ctermfg=none    ctermbg=233      cterm=none
highlight CursorLineNr               ctermfg=238     ctermbg=none     cterm=none
highlight DiffAdd                    ctermfg=none    ctermbg=029      cterm=none
highlight DiffChange                 ctermfg=none    ctermbg=238      cterm=none
highlight DiffDelete                 ctermfg=none    ctermbg=009      cterm=none
"ighlight DiffText                   ctermfg=000     ctermbg=000      cterm=none
highlight Directory                  ctermfg=031     ctermbg=none     cterm=none
highlight ErrorMsg                   ctermfg=009     ctermbg=none     cterm=none
"ighlight FoldColumn                 ctermfg=000     ctermbg=000      cterm=none
highlight Folded                     ctermfg=238     ctermbg=234      cterm=none
highlight IncSearch                  ctermfg=235     ctermbg=221      cterm=none
highlight LineNr                     ctermfg=235     ctermbg=none     cterm=none
highlight MatchParen                 ctermfg=253     ctermbg=067      cterm=none
highlight ModeMsg                    ctermfg=253     ctermbg=none     cterm=none
highlight MoreMsg                    ctermfg=253     ctermbg=none     cterm=none
highlight NonText                    ctermfg=235     ctermbg=none     cterm=none
highlight Normal                     ctermfg=244     ctermbg=none     cterm=none
highlight Pmenu                      ctermfg=238     ctermbg=233      cterm=none
"ighlight PmenuSbar                  ctermfg=000     ctermbg=000      cterm=none
highlight PmenuSel                   ctermfg=253     ctermbg=024      cterm=none
"ighlight PmenuThumb                 ctermfg=000     ctermbg=000      cterm=none
highlight Question                   ctermfg=253     ctermbg=none     cterm=none
highlight Search                     ctermfg=none    ctermbg=235      cterm=none
"ighlight SignColumn                 ctermfg=000     ctermbg=000      cterm=none
highlight SpecialKey                 ctermfg=235     ctermbg=none     cterm=none
highlight SpellBad                   ctermfg=203     ctermbg=none     cterm=undercurl
"ighlight SpellCap                   ctermfg=000     ctermbg=000      cterm=none
"ighlight SpellLocal                 ctermfg=000     ctermbg=000      cterm=none
"ighlight SpellRare                  ctermfg=000     ctermbg=000      cterm=none
highlight StatusLine                 ctermfg=253     ctermbg=none     cterm=none
highlight StatusLineNC               ctermfg=235     ctermbg=none     cterm=none
highlight TabLine                    ctermfg=244     ctermbg=none     cterm=none
highlight TabLineFill                ctermfg=none    ctermbg=none     cterm=none
highlight TabLineSel                 ctermfg=253     ctermbg=none     cterm=none
"ighlight Title                      ctermfg=000     ctermbg=000      cterm=none
highlight VertSplit                  ctermfg=238     ctermbg=none     cterm=none
highlight Visual                     ctermfg=none    ctermbg=233      cterm=none
"ighlight VisualNOS                  ctermfg=000     ctermbg=000      cterm=none
highlight WarningMsg                 ctermfg=009     ctermbg=none     cterm=none
highlight WildMenu                   ctermfg=253     ctermbg=024      cterm=none


""" Standard Groups
"ighlight Boolean                    ctermfg=none    ctermbg=none     cterm=none
"ighlight Character                  ctermfg=none    ctermbg=none     cterm=none
highlight Comment                    ctermfg=238     ctermbg=none     cterm=none
"ighlight Conditional                ctermfg=none    ctermbg=none     cterm=none
highlight Constant                   ctermfg=250     ctermbg=none     cterm=none
"ighlight Debug                      ctermfg=none    ctermbg=none     cterm=none
"ighlight Define                     ctermfg=none    ctermbg=none     cterm=none
"ighlight Delimiter                  ctermfg=none    ctermbg=none     cterm=none
"ighlight Error                      ctermfg=none    ctermbg=none     cterm=none
"ighlight Exception                  ctermfg=none    ctermbg=none     cterm=none
"ighlight Float                      ctermfg=none    ctermbg=none     cterm=none
highlight Function                   ctermfg=221     ctermbg=none     cterm=none
highlight Identifier                 ctermfg=067     ctermbg=none     cterm=none
"ighlight Ignore                     ctermfg=none    ctermbg=none     cterm=none
"ighlight Include                    ctermfg=none    ctermbg=none     cterm=none
highlight Keyword                    ctermfg=036     ctermbg=none     cterm=none
"ighlight Label                      ctermfg=none    ctermbg=none     cterm=none
"ighlight Macro                      ctermfg=none    ctermbg=none     cterm=none
highlight Number                     ctermfg=250     ctermbg=none     cterm=none
highlight Operator                   ctermfg=244     ctermbg=none     cterm=none
"ighlight PreCondit                  ctermfg=none    ctermbg=none     cterm=none
highlight PreProc                    ctermfg=073     ctermbg=none     cterm=none
highlight Repeat                     ctermfg=none    ctermbg=none     cterm=none
highlight Special                    ctermfg=250     ctermbg=none     cterm=none
"ighlight SpecialChar                ctermfg=none    ctermbg=none     cterm=none
"ighlight SpecialComment             ctermfg=none    ctermbg=none     cterm=none
highlight Statement                  ctermfg=036     ctermbg=none     cterm=none
"ighlight StorageClass               ctermfg=none    ctermbg=none     cterm=none
highlight String                     ctermfg=066     ctermbg=none     cterm=none " 059 also an option
"ighlight Structure                  ctermfg=none    ctermbg=none     cterm=none
"ighlight Tag                        ctermfg=none    ctermbg=none     cterm=none
highlight Todo                       ctermfg=244     ctermbg=none     cterm=none
highlight Type                       ctermfg=244     ctermbg=none     cterm=none
"ighlight Typedef                    ctermfg=none    ctermbg=none     cterm=none
"ighlight Underlined                 ctermfg=none    ctermbg=none     cterm=none


""" Syntax Specific
" c
"ighlight cConditional               ctermfg=035     ctermbg=none     cterm=none
"ighlight cRepeat                    ctermfg=035     ctermbg=none     cterm=none
"ighlight cStatement                 ctermfg=035     ctermbg=none     cterm=none
"ighlight cStructure                 ctermfg=075     ctermbg=none     cterm=none
"ighlight cType                      ctermfg=075     ctermbg=none     cterm=none

" css
"ighlight cssClassName               ctermfg=gray    ctermbg=none     cterm=none
"ighlight cssColor                   ctermfg=red     ctermbg=none     cterm=bold
"ighlight cssIdentifier              ctermfg=255     ctermbg=none     cterm=bold
"ighlight cssTagName                 ctermfg=075     ctermbg=none     cterm=none

" diff
"ighlight diffAdded                  ctermfg=075     ctermbg=none     cterm=bold
"ighlight diffRemoved                ctermfg=red     ctermbg=none     cterm=bold

" html
"ighlight htmlArg                    ctermfg=237     ctermbg=none     cterm=bold
"ighlight htmlEvent                  ctermfg=237     ctermbg=none     cterm=bold
"ighlight htmlSpecialTagName         ctermfg=075     ctermbg=none     cterm=none
"ighlight htmlTag                    ctermfg=075     ctermbg=none     cterm=bold
"ighlight htmlTagName                ctermfg=075     ctermbg=none     cterm=none

" javascript
"ighlight javaScriptRegexpstring     ctermfg=172     ctermbg=none     cterm=none
"ighlight javaScriptStatement        ctermfg=035     ctermbg=none     cterm=none

" perl
"ighlight perlRepeat                 ctermfg=035     ctermbg=none     cterm=none
"ighlight perlRepeat                 ctermfg=035     ctermbg=none     cterm=none
"ighlight perlStatement              ctermfg=035     ctermbg=none     cterm=none
"ighlight perlStatementInclude       ctermfg=035     ctermbg=none     cterm=none

" php
highlight phpRegion                  ctermfg=250     ctermbg=none     cterm=none
"ighlight phpBoolean                 ctermfg=172     ctermbg=none     cterm=bold
"ighlight phpConditional             ctermfg=035     ctermbg=none     cterm=none
"ighlight phpOperator                ctermfg=248     ctermbg=none     cterm=none
"ighlight phpRepeat                  ctermfg=035     ctermbg=none     cterm=none
"ighlight phpStatement               ctermfg=035     ctermbg=none     cterm=none

" ruby
"ighlight rubyBoolean                ctermfg=172     ctermbg=none     cterm=bold
"ighlight rubyConditional            ctermfg=035     ctermbg=none     cterm=none
"ighlight rubyConstant               ctermfg=160     ctermbg=none     cterm=none
"ighlight rubyControl                ctermfg=035     ctermbg=none     cterm=none
"ighlight rubyDefine                 ctermfg=035     ctermbg=none     cterm=none
"ighlight rubyInterpolationDelimiter ctermfg=237     ctermbg=none     cterm=bold
"ighlight rubyPseudoVariable         ctermfg=237     ctermbg=none     cterm=bold
"ighlight rubyRegexp                 ctermfg=172     ctermbg=none     cterm=none
"ighlight rubyStringDelimiter        ctermfg=255     ctermbg=none     cterm=none

" rust
"ighlight rustConditional            ctermfg=035     ctermbg=none     cterm=none
"ighlight rustKeyword                ctermfg=035     ctermbg=none     cterm=none
"ighlight rustSigil                  ctermfg=237     ctermbg=none     cterm=bold

" sh
"ighlight shSet                      ctermfg=035     ctermbg=none     cterm=none
"ighlight shFunctionKey              ctermfg=035     ctermbg=none     cterm=none
