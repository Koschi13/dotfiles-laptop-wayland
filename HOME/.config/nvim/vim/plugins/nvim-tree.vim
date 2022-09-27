let g:nvim_tree_side = 'left'               "left by default
let g:nvim_tree_width = 40                  "30 by default
let g:nvim_tree_auto_ignore_ft = [ 'startify' ]
" let g:nvim_tree_tab_open = 1              "0 by default, will open the tree when entering a new tab and the tree was previously open
let g:nvim_tree_width_allow_resize  = 1     "0 by default, will not resize the tree when opening a file
" let g:nvim_tree_disable_netrw = 0         "1 by default, disables netrw
" let g:nvim_tree_hijack_netrw = 0          "1 by default, prevents netrw from automatically opening when opening directories (but lets you keep its other utilities)
" if nvim-web-devicons is installed and on your runtimepath

" Open nerdtree with ctrl+m
nnoremap <C-e> :NvimTreeToggle<CR>
nnoremap <leader>n :NvimTreeFindFile<CR>
