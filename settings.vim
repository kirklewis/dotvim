let mapleader=' '

set encoding=utf-8
set showcmd
set autowrite
set confirm
set laststatus=2
set number
set numberwidth=3
set ruler
set rulerformat=%-35(%4l,%02c\ %07P%)\ \ %f\ %<
set history=200
set visualbell
set clipboard=unnamed

" Tabs and spaces
set backspace=indent,eol,start
set autoindent
set smartindent
set cinoptions=>4
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" Text Formatting
set wrap
set textwidth=88

" Search
set incsearch
set hlsearch
set ignorecase
set smartcase

" File Handling
set noswapfile
set nobackup
set nowritebackup
set wildmenu
set wildmode=longest:full,full
set wildignore+=.DS_Store,*.jpg,*.jpeg,*.png,*.gif,*.bmp,*.webp,.git,.svn

" Folding
set foldmethod=indent
set foldlevel=1
set nofoldenable

" Automatically reload a file if it's changed outside Vim and not modified inside
set autoread
augroup autoread_on_focus
  autocmd!
  autocmd FocusGained,BufEnter,CursorHold,CursorHoldI *
        \ if mode() !~ '\v(c|r.?|!|t)' && getcmdwintype() == '' |
        \   checktime |
        \ endif
augroup END
