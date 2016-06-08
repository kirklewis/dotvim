" populate the g:airline_symbols dictionary with the powerline symbols.
let g:airline_powerline_fonts = 1
let mapleader='\'                   " Set Leader Key

set encoding=utf8
set nocompatible                    " enable Vi iMprovements
set autowrite
set nocursorcolumn                  " very useful, too distracting

" tabs and spaces
set backspace=indent,eol,start      " better backspace
set autoindent
set smartindent
set cinoptions=>4
set tabstop=4                       " 4 spaces for tab
set softtabstop=4
set shiftwidth=4
set expandtab                       " Expand tab to spaces

" wrap
set wrap
set textwidth=78

set number
set history=150
set showcmd
set confirm
set showmatch
set laststatus=2
set visualbell
set numberwidth=3                   " number of columns to use for line numbers
set ruler
set rulerformat=set rulerformat=%-35(%4l,%02c\ %07P%)\ \ %f\ %< "show position of cursor
set viminfo='50,\"500

" folding
" set foldcolumn=2                  " columns for folding
set foldmethod=indent
set foldlevel=1
set nofoldenable                    " :set foldenable

" search
set incsearch
set hlsearch                        " Highlight searches when found
set ignorecase                      " Case insensitive search
set smartcase

set clipboard=unnamed
set wildchar=<Tab>
set wildmenu
set wildmode=longest:full,full
set wildignore +=.DS_Store
set wildignore +=*.jpg,*.jpeg,*.png,*.gif,*.bmp,*.webp
set wildignore +=.git,.svn

" directory
set noswapfile                      " do not write .swp files
set nobackup                        " do not write backup files
set nowritebackup

" mouse - also mapped in `maps.vim`
if has ("mouse")
  set mouse=a
endif

" ------ NERDTree
let NERDTreeShowHidden = 1                          " Show hidden files
let NERDTreeIgnore = ['\.DS_Store', '\.git$']       " Do not show these hidden files

" ------ GitGutter
let g:gitgutter_enabled = 1                         " Show git changes by default

" ------ Signify (for SVN, Mercurial)
let g:signify_disable_by_default = 1                " Do not check for svn, git and mercurial changes by default
let g:signify_sign_change = '~'                     " Use tilda for modified line
let g:signify_vcs_list = [ 'git', 'hg', 'svn' ]     " Check for VCS in this order

let g:signify_vcs_cmds = {
    \ 'git':      'git diff --no-color --no-ext-diff -U0 -- %f',
    \ 'hg':       'hg diff --config extensions.color=! --config defaults.diff= --nodates -U0 -- %f',
    \ 'svn':      'svn diff --diff-cmd %d -x -U0 -- %f',
    \ }

" ------ Vim JSON
let g:vim_json_syntax_conceal = 0                   " Do not conceal quotes

" ------ Indent Line
let g:indentLine_char = '¦'                         " Set the indent character

let g:indentLine_fileTypeExclude = [ 'vim', 'text', 'sh' ]
