" functions.vim
" Author: Nick Platt

function! GetSyntaxName()
   let syntax_name = synIDattr(synIDtrans(synID(line('.'), col('.'), 1)), 'name') . '.'
                 \ . synIDattr(synID(line('.'), col('.'), 1), 'name')

   let trans_name = synIDattr(synIDtrans(synID(line('.'), col('.'), 0)), 'name') . '.'
                 \ . synIDattr(synID(line('.'), col('.'), 0), 'name')
   return syntax_name != trans_name
      \ ? syntax_name . ' (' . trans_name . ')'
      \ : syntax_name != '.'
      \ ? syntax_name
      \ : ''
endfunction

function! TrimTrailingWhitespace()
   let last_search_query=@/
   let line = line('.')
   let column = col('.')

   " Remove trailing whitespace, leaving pure-whitespace lines intact
   "%s/\(^\|\s\)@<!\s\+$//eg

   " Remove all trailing whitespace
   %s/\s\+$//eg

   let @/=last_search_query
   call cursor(line, column)
endfunction
