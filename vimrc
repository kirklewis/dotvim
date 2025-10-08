call plug#begin('~/.vim/plugged')

" Plugins
Plug '907th/vim-auto-save'
Plug 'airblade/vim-gitgutter'
Plug 'catppuccin/vim', { 'as': 'catppuccin' }
Plug 'elzr/vim-json'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'jiangmiao/auto-pairs'
Plug 'leafgarland/typescript-vim'
Plug 'mhinz/vim-signify'
Plug 'ntpeters/vim-better-whitespace'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'Yggdroot/indentLine'

Plug 'ryanoasis/vim-devicons'

call plug#end()

" Autosave
let g:auto_save = 1
let g:auto_save_events = ["InsertLeave", "TextChanged"]

" Mappings and Settings
source ~/.vim/commands.vim
source ~/.vim/settings.vim
source ~/.vim/mappings.vim
source ~/.vim/filetypes.vim
source ~/.vim/themes.vim
