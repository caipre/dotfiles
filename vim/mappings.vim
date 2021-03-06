" mappings.vim
" Author: Nick Platt

let mapleader = ","
nnoremap          <leader>f :CtrlPFunky<CR>
nnoremap          <leader>r :%s/\<<C-r><C-w>\>//g<Left><Left>
nnoremap <silent> <leader>, :silent! /arst$<CR>
nnoremap <silent> <leader>. :set spell!<CR>
nnoremap <silent> <leader>a :FSSplitLeft<CR>
nnoremap <silent> <leader>cd :cd %:p:h<cr>:pwd<cr>
nnoremap <silent> <leader>g :Goyo<CR>
nnoremap <silent> <leader>h :set hlsearch!<CR>
nnoremap <silent> <leader>p :set paste!<CR>
nnoremap <silent> <leader>t :tnext<CR>
nnoremap <silent> <leader>w :set list!<CR>
nnoremap <silent> <leader>d <C-r>=strftime('%F')<CR>

vnoremap <silent> <leader>s :sort<CR>

cnoremap <C-A>         <Home>
cnoremap <C-E>         <End>

nnoremap <BACKSPACE>   hx
nnoremap <C-H>         <C-W>h
nnoremap <C-J>         <C-W>j
nnoremap <C-K>         <C-W>k
nnoremap <C-L>         <C-W>l
nnoremap <CR>          o<ESC>
nnoremap <SPACE>       i<SPACE><ESC>l
nnoremap <TAB>         i<TAB><ESC>l
nnoremap Y             y$
nnoremap j             gj
nnoremap k             gk

xnoremap ga <Plug>(EasyAlign)
nnoremap ga <Plug>(EasyAlign)

map Q <nop>
