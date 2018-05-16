map <Leader>a ggVG              " Select all

vnoremap < <gv                  " Reselect visual block after shift indent
vnoremap > >gv                  " Reselect visual block after indent

" Tab navigation
map <C-Left> :tabp<CR>          " Jump to previous tab
map <C-Right> :tabn<CR>         " Jump to next tab

" ------ NERDTree
map <C-n> :NERDTreeToggle<CR>   " NERDTree toggle
map <Leader>f :NERDTreeFind<CR> " Jump to NERDTree
