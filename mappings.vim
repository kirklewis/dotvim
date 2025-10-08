" ---- Mappings

vnoremap < <gv
vnoremap > >gv

" ---- NERDTree
nnoremap <C-n>     :NERDTreeToggle<CR>
nnoremap <Leader>f :NERDTreeFind<CR>

" Shift-Tab in Visual mode to unindent
vnoremap <Tab>   >gv
vnoremap <S-Tab> <gv

" ---- Coc.nvim completion helpers (avoid '|' in mappings)

function! s:TabOrComplete() abort
  " If the popup menu is visible, move to next item
  if coc#pum#visible()
    return coc#pum#next(1)
  endif

  " At start of line or after whitespace: insert a normal tab (respects expandtab)
  let l:colnum = col('.')
  if l:colnum <= 1 || getline('.')[l:colnum - 2] =~# '\s'
    return "\<Tab>"
  endif

  " Otherwise, trigger completion
  return coc#refresh()
endfunction

function! s:ShiftTabAction() abort
  " If popup visible, move to previous item; else backspace
  if coc#pum#visible()
    return coc#pum#prev(1)
  endif
  return "\<C-h>"
endfunction

" ---- Coc.nvim completion mappings

" Tab in insert mode: completion if popup visible, otherwise normal indent
inoremap <silent><expr> <Tab> <SID>TabOrComplete()

" Shift-Tab: go backwards in the popup menu, otherwise backspace
inoremap <silent><expr> <S-Tab> <SID>ShiftTabAction()

" Use Ctrl-n / Ctrl-p to navigate popup menu
inoremap <silent><expr> <C-n> coc#pum#visible() ? coc#pum#next(1) : "\<C-n>"
inoremap <silent><expr> <C-p> coc#pum#visible() ? coc#pum#prev(1) : "\<C-p>"

inoremap <silent><expr> <C-Space> coc#refresh()

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

nnoremap <Leader>/ :TComment<CR>
vnoremap <Leader>/ :TComment<CR>
