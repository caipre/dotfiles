" plugins.vim
" Author: Nick Platt

" ctrlp
let g:ctrlp_by_filename = 1
let g:ctrlp_cache_dir = $HOME.'/.vim/ctrlp-cache'
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_extensions = ['funky']
let g:ctrlp_lazy_update = 1
let g:ctrlp_max_files = 1000000
let g:ctrlp_user_command = "find %s -type f"            .
                         \ " -not -iname '*.gif'"       .
                         \ " -not -iname '*.gitignore'" .
                         \ " -not -iname '*.jpg'"       .
                         \ " -not -iname '*.lock'"      .
                         \ " -not -iname '*.lvimrc'"    .
                         \ " -not -iname '*.pdf'"       .
                         \ " -not -iname '*.png'"       .
                         \ " -not -iname '*.swf'"       .
                         \ " -not -iname 'tags'"        .
                         \ " -not -iname '*.xml'"       .
                         \ " -not -name '*Thumbs.db'"   .
                         \ " -not -path '*/.git/*'"     .
                         \ " | while read file; do"     .
                         \ "     echo $#file $file; "   .
                         \ "   done | sort -n | cut -d ' ' -f 2-"
let g:ctrlp_working_path_mode = 'rw'

" ctrlp-funky
let g:ctrlp_funky_sort_by_mru = 1
let g:ctrlp_funky_syntax_highlight = 1

" delimitmate
let g:delimitMate_expand_cr = 1

" localvimrc
let g:localvimrc_persistent = 2
let g:localvimrc_persistence_file = $HOME.'/.vim/.localvimrc_persistent'

" tagbar
let g:tagbar_autofocus = 1
let g:tagbar_iconchars = ['► ', '▼ ']
let g:tagbar_left = 1
let g:tagbar_show_visibility = 0
let g:tagbar_sort = 1
