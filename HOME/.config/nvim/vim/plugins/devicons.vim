" Borrowed from https://github.com/tiagofumo/vim-nerdtree-syntax-highlight
" Fits well for dark schemes
let g:colors_devicons = {
      \ 'brown': ["#905532", 95],
      \ 'aqua': ["#3AFFDB", 86],
      \ 'blue': ["#689FB6", 73],
      \ 'darkBlue': ["#44788E", 66],
      \ 'purple': ["#834F79", 93],
      \ 'red': ["#AE403F", 131],
      \ 'darkRed': ["#97050C", 88],
      \ 'beige': ["#F5C06F", 215],
      \ 'yellow': ["#F09F17", 214],
      \ 'orange': ["#D4843E", 172],
      \ 'orange2': ["#DD5E1C", 166],
      \ 'darkOrange': ["#F16529", 202],
      \ 'pink': ["#CB6F6F", 167],
      \ 'lightGreen': ["#8FAA54", 107],
      \ 'green': ["#31B53E", 71],
      \ 'white': ["#FFFFFF", 231],
      \}

" Do not show brackets around icons in NERDTree
let g:webdevicons_conceal_nerdtree_brackets = 1

" Do not put extra whitespace before icon
let g:WebDevIconsNerdTreeBeforeGlyphPadding=''

" Do not overwrite airline.section_y with custom fileformat indicator
" BUG: unfortunately, vim-devicons overrites section instead of appending
let g:webdevicons_enable_airline_statusline_fileformat_symbols = 0

" Show icons for directories
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:WebDevIconsUnicodeGlyphDoubleWidth = 0

" Use different icons for opened and closed folder
let g:DevIconsEnableFoldersOpenClose = 1

" Colorize devicons
let g:devicons_colors = {
      \ 'brown': ['', '', ''],
      \ 'aqua': [''],
      \ 'blue': ['', '', '', '', '', '', '', '', '', '', '', '', '', '', ''],
      \ 'purple': ['', '', '', '', '', '', ''],
      \ 'red': ['', '', '', '', '', ''],
      \ 'beige': ['', '', '', ''],
      \ 'yellow': ['', 'λ', ''],
      \ 'orange': ['', '', ''],
      \ 'darkOrange': ['', '', '', ''],
      \ 'pink': ['', ''],
      \ 'green': ['', '', '', '', '', '', '', '', ''],
      \ 'white': ['', '', '', '', ''],
      \ }
augroup aug_vim_devicons
  au!

  " Apply devicons coloring only for NERDtree buffer
  for color in keys(g:devicons_colors)
    exec 'autocmd FileType nerdtree syntax match devicons_' . color . ' /\v' . join(g:devicons_colors[color], '.|') . './ containedin=ALL'
    exec 'autocmd FileType nerdtree highlight devicons_' . color . ' guifg=' .g:colors_devicons[color][0] . ' ctermfg=' . g:colors_devicons[color][1]
  endfor
augroup END

