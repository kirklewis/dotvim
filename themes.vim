" ---- Theme / UI

" True color support
set termguicolors

" Background preference
set background=dark

" Colorscheme
colorscheme catppuccin_macchiato

" Airline
let g:airline_powerline_fonts = 1
let g:airline_theme = 'catppuccin_macchiato'

" IndentLine
let g:indentLine_char = '¦'
let g:indentLine_fileTypeExclude = ['vim', 'text', 'sh']

" GitGutter
let g:gitgutter_enabled = 1
set signcolumn=auto

" Signify
let g:signify_disable_by_default = 1
let g:signify_sign_change = '~'
let g:signify_vcs_list = ['git', 'hg', 'svn']
let g:signify_vcs_cmds = {
    \ 'git': 'git diff --no-color --no-ext-diff -U0 -- %f',
    \ 'hg':  'hg diff --config extensions.color=! --config defaults.diff= --nodates -U0 -- %f',
    \ 'svn': 'svn diff --diff-cmd %d -x -U0 -- %f',
    \ }

" JSON conceal
let g:vim_json_syntax_conceal = 0

" NERDTree visuals
let NERDTreeShowHidden = 1
let NERDTreeIgnore = ['\.DS_Store', '\.git$']

" GUI font (for GVim/Neovide/terminal GUIs)
set guifont=Victor\ Mono\ Nerd\ Font:h14
