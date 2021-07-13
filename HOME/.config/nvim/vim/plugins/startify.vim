let g:startify_session_dir = '~/.config/nvim/sessions'

" returns all modified files of the current git repo
" `2>/dev/null` makes the command fail quietly, so that when we are not
" in a git repo, the list will be empty
function! s:gitModified()
    let files = systemlist('git ls-files -m 2>/dev/null')
    return map(files, "{'line': v:val, 'path': v:val}")
endfunction

let g:startify_lists = [
          \ { 'type': 'sessions',  'header': ['   Sessions']                      },
          \ { 'type': function('s:gitModified'),  'header': ['   git modified']   },
          \ { 'type': 'dir',       'header': ['   Current Directory: '. getcwd()] },
          \ { 'type': 'files',     'header': ['   Files']                         },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']                     },
          \ ]

let g:startify_session_autoload = 0
let g:startify_session_delete_buffers = 1
let g:startify_change_to_vcs_root = 1
let g:startify_fortune_use_unicode = 1
let g:startify_session_persistence = 1

let g:startify_bookmarks = [
            \ { 'c': '~/.config/sway/config' },
            \ { 'v': '~/.config/nvim/init.vim' },
            \ { 'z': '~/.zshrc' },
            \ ]

let g:startify_enable_special = 0
