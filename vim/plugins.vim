" plugins.vim
" Author: Nick Platt

" ctrlp
let g:ctrlp_by_filename = 1
let g:ctrlp_cache_dir = $HOME.'/.vim/ctrlp-cache'
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_lazy_update = 1
let g:ctrlp_max_files = 1000000
let g:ctrlp_user_command = 'find %s -type f' .
                         \ ' -not -regex ''.*\(\.git\|\.svn\)/.*''' .
                         \ ' -not -regex ''.*\.\(gif\|jpg\|pdf\|png\)$'''
let g:ctrlp_working_path_mode = 'rw'

" delimitmate
let g:delimitMate_expand_cr = 1
