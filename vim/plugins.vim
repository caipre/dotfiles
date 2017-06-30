" plugins.vim
" Author: Nick Platt

" ctrlp
let g:ctrlp_by_filename = 1
let g:ctrlp_cache_dir = $HOME.'/.vim/ctrlp-cache'
let g:ctrlp_extensions = ['funky', 'tag', 'dir']
let g:ctrlp_lazy_update = 1
let g:ctrlp_max_files = 1000000
let g:ctrlp_switch_buffer = 'T'
let g:ctrlp_user_command = {
   \ 'types': {
   \    1: ['.git', 'cd %s && git ls-files'],
   \ },
   \ 'fallback':
   \    "find %s"                       .
   \    " \\("                          .
   \    "       -path '*/.git'"         .
   \    "    -o -path '*/build'"        .
   \    " \\) -prune"                   .
   \    " -o -type f"                   .
   \    " \\("                          .
   \    "    -not -iname '*.DS_Store'"  .
   \    "    -not -iname '*.gif'"       .
   \    "    -not -iname '*.gitignore'" .
   \    "    -not -iname '*.jpg'"       .
   \    "    -not -iname '*.lock'"      .
   \    "    -not -iname '*.lvimrc'"    .
   \    "    -not -iname '*.o'"         .
   \    "    -not -iname '*.pdf'"       .
   \    "    -not -iname '*.png'"       .
   \    "    -not -iname '*.swf'"       .
   \    "    -not -iname '*thumbs.db'"  .
   \    "    -not -iname 'tags'"        .
   \    " \\) -print"                   .
   \    " | while read file; do"        .
   \    "     echo $#file $file;"       .
   \    "   done | sort -n | cut -d ' ' -f 2-"
   \ }

let g:ctrlp_working_path_mode = 'raw'

" ctrlp-funky
let g:ctrlp_funky_sort_by_mru = 1
let g:ctrlp_funky_syntax_highlight = 1

" diff-enhanced
if &diff
   let &diffexpr='EnhancedDiff#Diff("git diff", "--diff-algorithm=patience")'
endif

" delimitmate
let g:delimitMate_expand_cr = 1
au FileType rust let b:delimitMate_quotes = "\" `"

" goyo
let g:goyo_width = 168
let g:goyo_margin_top = 0
let g:goyo_margin_bottom = 0
let g:goyo_linenr = 1

" jekyll
let g:jekyll_post_template = [
   \ '---',
   \ 'title: "JEKYLL_TITLE"',
   \ 'date: "JEKYLL_DATE"',
   \ '---',
   \ ''
\]

" supertab
let g:SuperTabDefaultCompletionType = '<C-n>'
let g:SuperTabCrMapping = 0

" localvimrc
let g:localvimrc_persistent = 2
let g:localvimrc_persistence_file = $HOME.'/.vim/.localvimrc_persistent'

" tabline
let g:tabline_bracket_left  = ''
let g:tabline_bracket_right = ''
let g:tabline_modified = '+'
let g:tabline_fnamemod = ':p:~:.'

" tagbar
let g:tagbar_autofocus = 1
let g:tagbar_iconchars = ['► ', '▼ ']
let g:tagbar_left = 1
let g:tagbar_show_visibility = 0
let g:tagbar_sort = 1

let g:tagbar_type_rust = {
   \ 'ctagstype' : 'rust',
   \ 'kinds' : [
       \'T:types,type definitions',
       \'f:functions,function definitions',
       \'g:enum,enumeration names',
       \'s:structure names',
       \'m:modules,module names',
       \'c:consts,static constants',
       \'t:traits,traits',
       \'i:impls,trait implementations',
   \]
\}

" togglecursor
let g:togglecursor_leave = 'line'

" ultisnips
let g:UltiSnipsExpandTrigger = '<c-space>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

" youcompleteme
let g:ycm_collect_identifiers_from_tags_files = 1
