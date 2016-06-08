execute pathogen#infect()
execute pathogen#helptags()

" Default Color Scheme
syntax enable
set background=dark
colorscheme solarized

" Maps and Settings
source ~/.vim/settings.vim
source ~/.vim/mappings.vim

" Auto Commands
if has ("autocmd")
    " Enable file type detection
    filetype plugin indent on

    " All text files set text with to 78
    autocmd FileType text setlocal textwidth=78

    " When editing a file, always jump to the last known cursor position.
    " Don't do it when the position is invalid or when inside an event handler
    " (happens when dropping a file on gvim).
    autocmd BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \   exe "normal g`\"" |
        \ endif

    " NERDTree - Close if it's the last window open
    autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

    " Other file type detection
    source ~/.vim/filetypes.vim

endif " has("autocmd")
