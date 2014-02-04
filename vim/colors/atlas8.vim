" atlas8.vim
" Author:  Nick Platt <platt.nicholas@gmail.com>
" License: MIT <http://opensource.org/licenses/MIT>

set background=dark

highlight clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'atlas8'

""" Interface
highlight ColorColumn                 ctermfg=white   ctermbg=none     cterm=none
"ighlight Conceal                     ctermfg=        ctermbg=         cterm=
"ighlight Cursor                      ctermfg=        ctermbg=         cterm=
"ighlight CursorIM                    ctermfg=        ctermbg=         cterm=
"ighlight CursorColumn                ctermfg=        ctermbg=         cterm=
highlight CursorLine                  ctermfg=none    ctermbg=black    cterm=none
highlight CursorLineNr                ctermfg=yellow  ctermbg=none     cterm=bold
"ighlight Directory                   ctermfg=        ctermbg=         cterm=
"ighlight DiffAdd                     ctermfg=        ctermbg=         cterm=
"ighlight DiffChange                  ctermfg=        ctermbg=         cterm=
"ighlight DiffDelete                  ctermfg=        ctermbg=         cterm=
"ighlight DiffText                    ctermfg=        ctermbg=         cterm=
highlight ErrorMsg                    ctermfg=red     ctermbg=none     cterm=none
highlight VertSplit                   ctermfg=white   ctermbg=none     cterm=none
highlight Folded                      ctermfg=black   ctermbg=none     cterm=bold
"ighlight FoldColumn                  ctermfg=        ctermbg=         cterm=
"ighlight SignColumn                  ctermfg=        ctermbg=         cterm=
highlight IncSearch                   ctermfg=black   ctermbg=white    cterm=bold
highlight LineNr                      ctermfg=black   ctermbg=none     cterm=bold
highlight MatchParen                  ctermfg=white   ctermbg=cyan     cterm=bold
"ighlight ModeMsg                     ctermfg=        ctermbg=         cterm=
"ighlight MoreMsg                     ctermfg=        ctermbg=         cterm=
highlight NonText                     ctermfg=black   ctermbg=none     cterm=bold
highlight Normal                      ctermfg=gray    ctermbg=none     cterm=none
highlight Pmenu                       ctermfg=white   ctermbg=gray     cterm=bold
highlight PmenuSel                    ctermfg=white   ctermbg=blue     cterm=bold
"ighlight PmenuSbar                   ctermfg=        ctermbg=         cterm=
"ighlight PmenuThumb                  ctermfg=        ctermbg=         cterm=
"ighlight Question                    ctermfg=        ctermbg=         cterm=
highlight Search                      ctermfg=white   ctermbg=white    cterm=bold
highlight SpecialKey                  ctermfg=black   ctermbg=none     cterm=bold
highlight SpellBad                    ctermfg=red     ctermbg=none     cterm=none
"ighlight SpellCap                    ctermfg=        ctermbg=         cterm=
"ighlight SpellLocal                  ctermfg=        ctermbg=         cterm=
"ighlight SpellRare                   ctermfg=        ctermbg=         cterm=
highlight StatusLine                  ctermfg=white   ctermbg=none     cterm=bold
highlight StatusLineNC                ctermfg=black   ctermbg=none     cterm=bold
highlight TabLine                     ctermfg=gray    ctermbg=none     cterm=none
highlight TabLineFill                 ctermfg=none    ctermbg=black    cterm=none
highlight TabLineSel                  ctermfg=white   ctermbg=none     cterm=bold
highlight Title                       ctermfg=white   ctermbg=none     cterm=bold
highlight Visual                      ctermfg=black   ctermbg=gray     cterm=bold
"ighlight VisualNOS                   ctermfg=        ctermbg=         cterm=
highlight WarningMsg                  ctermfg=red     ctermbg=none     cterm=none
highlight WildMenu                    ctermfg=white   ctermbg=blue     cterm=none


""" Standard Groups
highlight Comment                     ctermfg=black   ctermbg=none     cterm=bold
highlight Constant                    ctermfg=red     ctermbg=none     cterm=none
"ighlight Boolean                     ctermfg=        ctermbg=         cterm=
"ighlight Character                   ctermfg=        ctermbg=         cterm=
"ighlight Float                       ctermfg=        ctermbg=         cterm=
highlight Number                      ctermfg=white   ctermbg=none     cterm=none
highlight String                      ctermfg=white   ctermbg=none     cterm=none
highlight Function                    ctermfg=white   ctermbg=none     cterm=bold
highlight Identifier                  ctermfg=cyan    ctermbg=none     cterm=none
highlight Keyword                     ctermfg=white   ctermbg=none     cterm=none
highlight Statement                   ctermfg=gray    ctermbg=none     cterm=none
"ighlight Conditional                 ctermfg=        ctermbg=         cterm=
"ighlight Repeat                      ctermfg=        ctermbg=         cterm=
"ighlight Repeat                      ctermfg=        ctermbg=         cterm=
"ighlight Label                       ctermfg=        ctermbg=         cterm=
"ighlight Operator                    ctermfg=        ctermbg=         cterm=
"ighlight Exception                   ctermfg=        ctermbg=         cterm=
"ighlight PreProc                     ctermfg=        ctermbg=         cterm=
"ighlight Include                     ctermfg=        ctermbg=         cterm=
"ighlight Define                      ctermfg=        ctermbg=         cterm=
"ighlight Macro                       ctermfg=        ctermbg=         cterm=
"ighlight PreCondit                   ctermfg=        ctermbg=         cterm=
"ighlight Type                        ctermfg=        ctermbg=         cterm=
"ighlight StorageClass                ctermfg=        ctermbg=         cterm=
"ighlight Structure                   ctermfg=        ctermbg=         cterm=
"ighlight Typedef                     ctermfg=        ctermbg=         cterm=
"ighlight Special                     ctermfg=        ctermbg=         cterm=
"ighlight SpecialChar                 ctermfg=        ctermbg=         cterm=
"ighlight Tag                         ctermfg=        ctermbg=         cterm=
"ighlight Delimiter                   ctermfg=        ctermbg=         cterm=
"ighlight SpecialComment              ctermfg=        ctermbg=         cterm=
"ighlight Debug                       ctermfg=        ctermbg=         cterm=
"ighlight Underlined                  ctermfg=        ctermbg=         cterm=
"ighlight Ignore                      ctermfg=        ctermbg=         cterm=
"ighlight Error                       ctermfg=        ctermbg=         cterm=
highlight Todo                        ctermfg=blue    ctermbg=none     cterm=bold


""" Syntax Specific
" c
highlight cConditional                ctermfg=green   ctermbg=none     cterm=none
highlight cRepeat                     ctermfg=green   ctermbg=none     cterm=none
highlight cStatement                  ctermfg=green   ctermbg=none     cterm=none
highlight cStructure                  ctermfg=blue    ctermbg=none     cterm=none
highlight cType                       ctermfg=blue    ctermbg=none     cterm=none

" css
highlight cssClassName                ctermfg=gray    ctermbg=none     cterm=none
highlight cssColor                    ctermfg=red     ctermbg=none     cterm=bold
highlight cssIdentifier               ctermfg=white   ctermbg=none     cterm=bold
highlight cssTagName                  ctermfg=blue    ctermbg=none     cterm=none

" diff
highlight diffAdded                   ctermfg=blue    ctermbg=none     cterm=bold
highlight diffRemoved                 ctermfg=red     ctermbg=none     cterm=bold

" html
highlight htmlArg                     ctermfg=black   ctermbg=none     cterm=bold
highlight htmlEvent                   ctermfg=black   ctermbg=none     cterm=bold
highlight htmlSpecialTagName          ctermfg=blue    ctermbg=none     cterm=none
highlight htmlTag                     ctermfg=blue    ctermbg=none     cterm=bold
highlight htmlTagName                 ctermfg=blue    ctermbg=none     cterm=none

" javascript
highlight javaScriptRegexpstring      ctermfg=yellow  ctermbg=none     cterm=none
highlight javaScriptStatement         ctermfg=green   ctermbg=none     cterm=none

" perl
highlight perlRepeat                  ctermfg=green   ctermbg=none     cterm=none
highlight perlRepeat                  ctermfg=green   ctermbg=none     cterm=none
highlight perlStatement               ctermfg=green   ctermbg=none     cterm=none
highlight perlStatementInclude        ctermfg=green   ctermbg=none     cterm=none

" php
highlight phpBoolean                  ctermfg=yellow  ctermbg=none     cterm=bold
highlight phpConditional              ctermfg=green   ctermbg=none     cterm=none
highlight phpRepeat                   ctermfg=green   ctermbg=none     cterm=none
highlight phpStatement                ctermfg=green   ctermbg=none     cterm=none

" ruby
highlight rubyBoolean                 ctermfg=yellow  ctermbg=none     cterm=bold
highlight rubyConditional             ctermfg=green   ctermbg=none     cterm=none
highlight rubyConstant                ctermfg=gray    ctermbg=none     cterm=none
highlight rubyControl                 ctermfg=green   ctermbg=none     cterm=none
highlight rubyDefine                  ctermfg=green   ctermbg=none     cterm=none
highlight rubyInterpolationDelimiter  ctermfg=black   ctermbg=none     cterm=bold
highlight rubyPseudoVariable          ctermfg=black   ctermbg=none     cterm=bold
highlight rubyRegexp                  ctermfg=yellow  ctermbg=none     cterm=none
highlight rubyStringDelimiter         ctermfg=white   ctermbg=none     cterm=none

" rust
highlight rustConditional             ctermfg=green   ctermbg=none     cterm=none
highlight rustKeyword                 ctermfg=green   ctermbg=none     cterm=none
highlight rustSigil                   ctermfg=black   ctermbg=none     cterm=bold

" sh
highlight shSet                       ctermfg=green   ctermbg=none     cterm=none
highlight shFunctionKey               ctermfg=green   ctermbg=none     cterm=none
