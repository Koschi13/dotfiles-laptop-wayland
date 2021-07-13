" Plugins
source $HOME/.config/nvim/vim/init.vim

let mapleader="\<Space>"
" Use ; for commands.
nnoremap ; :

set showmatch           " Show matching brackets.
set number              " Show the line numbers on the left side.
set formatoptions+=o    " Continue comment marker in new lines.
set expandtab           " Insert spaces when TAB is pressed.
set tabstop=4           " Render TABs using this many spaces.
set shiftwidth=4        " Indentation amount for < and > commands.
set nostartofline       " Do not jump to first character with page commands.
set nojoinspaces        " Prevents inserting two spaces after punctuation on a join (J)
set termguicolors
set foldmethod=indent   " Fold on indent. <za> toggle, <zo> open, <zc> close, <zR> open all,  <zM> close all

" More natural splits
set splitbelow          " Horizontal split below current.
set splitright          " Vertical split to right of current.

if !&scrolloff
    set scrolloff=5     " Show next 3 lines while scrolling.
endif

if !&sidescrolloff
    set sidescrolloff=8 " Show next 5 columns while side-scrolling.
endif

" Tell Vim which characters to show for expanded TABs,
" trailing whitespace, and end-of-lines.
if &listchars ==# 'eol:$'
  set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
endif
set list                " Show problematic characters.

" Also highlight all tabs and trailing whitespace characters.
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$\|\t/

set ignorecase          " Make searching case insensitive
set smartcase           " ... unless the query has capital letters.
set gdefault            " Use 'g' flag by default with :s/foo/bar/.

" Use <C-L> to clear the highlighting of :set hlsearch.
"nnoremap <silent> <Leader>l :nohlsearch<cr>

" Search and Replace
nmap <Leader>s :%s//g<Left><Left>

" Relative numbering
function! NumberToggle()
  if(&relativenumber == 1)
    set nornu
    set number
  else
    set rnu
  endif
endfunc

" Toggle between normal and relative numbering.
nnoremap <leader>r :call NumberToggle()<cr>

" auto-format
autocmd BufWritePre *.py lua vim.lsp.buf.formatting_sync(nil, 100)

" include luafiles
luafile $HOME/.config/nvim/lua/init.lua

vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>
