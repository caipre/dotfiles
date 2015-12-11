" options.vim
" Author: Nick Platt

set autoindent
set backspace=indent,eol,start
set cursorline
set complete=.,w,b,i,t
set completeopt=menu,preview
"et directory=$HOME/.swp
set diffopt=filler,iwhite
set expandtab
set fileformat=unix
set fillchars=vert:│
set foldcolumn=0
set formatoptions=tcroqnl
set history=100
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set lazyredraw
set linebreak
set nolist
set listchars=tab:·-,trail:_,eol:¬,extends:»,precedes:«
set matchtime=2
set number
set scrolloff=5
set shiftround
set shiftwidth=3
set showcmd
set showmatch
set smartcase
set smarttab
set softtabstop=3
set splitbelow
set splitright
set statusline=File\ %F\ %r\ %{GetSyntaxName()}%=[%c\ \|\ %l/%L\ (%p%%)]
set tabstop=3
set tags=tags;~/
set textwidth=80
set timeoutlen=200
set viminfo+=n$HOME/.vim/.viminfo
set virtualedit=onemore
set wildignore=*/.git*,*/.svn/*
set wildignorecase
set wildmenu
set wildmode=list:longest,full

if v:version >= 703
   set foldenable
   set foldlevelstart=100
   set foldmethod=indent
   set formatoptions+=j
   set mouse=a
endif
