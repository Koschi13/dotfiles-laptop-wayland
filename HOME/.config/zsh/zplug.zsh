# Check if zplug is installed
[ ! -d ~/.zplug ] && git clone https://github.com/zplug/zplug ~/.zplug
source ~/.zplug/init.zsh

# zplug
zplug 'zplug/zplug', hook-build:'zplug --self-manage'

# oh-my-zsh
zplug "robbyrussell/oh-my-zsh"

# kubectl
zplug "plugins/kubectl", from:oh-my-zsh

# aws
zplug "plugins/aws", from:oh-my-zsh

# zsh-users
zplug "zsh-users/zsh-completions", defer:0
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-history-substring-search"
zplug "zsh-users/zsh-syntax-highlighting", defer:2

# Aliase for Arch, see here: https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/archlinux
zplug "plugins/archlinux", from:oh-my-zsh, if:"which pacman"

# VI-Mode
zplug "plugins/vi-mode", from:oh-my-zsh

# Python virtualenv
zplug "plugins/virtualenv", from:oh-my-zsh

# Coloring for man-pages
zplug "plugins/colored-man-pages", from:oh-my-zsh

# Alias ccat will cat a File and color it File-extension specific
zplug "plugins/colorize", from:oh-my-zsh

# Copy the current Path to the Clipboard
zplug "plugins/copydir", from:oh-my-zsh

# Copy the content of a File to the Clipboard
zplug "plugins/copyfile", from:oh-my-zsh

# Add Alias cpv which will copy Files with rsync(which is better as the creator says...)
# See: https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/cp
zplug "plugins/cp", from:oh-my-zsh

# Cycle through your Visited Dirs with ctrl+shift+left/right
zplug "plugins/dircycle", from:oh-my-zsh

# Extract nearly every compressed File into a Folder named after the File
zplug "plugins/extract", from:oh-my-zsh

# Adds git-Aliase, MANY see here: https://github.com/robbyrussell/oh-my-zsh/wiki/Plugin:git
zplug "plugins/git", from:oh-my-zsh, if:"which git"

# Aliase for the History. h list History, hsi <pattern> search in History
zplug "plugins/history", from:oh-my-zsh

# Rust autocompletion
zplug "plugins/rust", from:oh-my-zsh

# Aliase for pip, see: https://github.com/robbyrussell/oh-my-zsh/blob/master/plugins/pip/pip.plugin.zsh
zplug "plugins/pip", from:oh-my-zsh, if:"which pip"

# Press Esc twice to put sudo at the beginning
zplug "plugins/sudo", from:oh-my-zsh, if:"which sudo"

# Aliase for tmux, see: https://github.com/robbyrussell/oh-my-zsh/blob/master/plugins/tmux/tmux.plugin.zsh
zplug "plugins/tmux", from:oh-my-zsh, if:"which tmux"

# Seach from comamnd line. google <seach>, ddg <search> (duckduckgo), github <search> and some more 
# useful: https://github.com/robbyrussell/oh-my-zsh/blob/master/plugins/web-search/web-search.plugin.zsh
zplug "plugins/web-search", from:oh-my-zsh

# Tracks most used Dirs and enables switching to them and etc: https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/z
zplug "plugins/z", from:oh-my-zsh

# =============================================================================
# External plugins
# =============================================================================
# A little bit complicated, enable when you want to use it: https://github.com/b4b4r07/enhancd
zplug "b4b4r07/enhancd", use:enhancd.sh

# Auto-close and delete matching delimiters
zplug "hlissner/zsh-autopair", defer:2

# Docker completion, not the best keep looking for better one
zplug "felixr/docker-zsh-completion"

# Jump back to parent directory. E.g. bd 2 -> cd ../..
zplug "tarrasch/zsh-bd"

# Simple zsh calculator
zplug "arzzen/calc.plugin.zsh"

# fzf
zplug "junegunn/fzf", if:"which fzf"

# cd-fzf
#zplug "changyuheng/zsh-interactive-cd", if:"which fzf"

# git-fzf
# Define them before sourcing the plugin if you don't use any plugin manager.
forgit_log=fglo
forgit_diff=fgd
forgit_add=fga
forgit_reset_head=fgrh
forgit_ignore=fgi
forgit_restore=fgcf
forgit_clean=fgclean
forgit_stash_show=fgss
zplug 'wfxr/forgit', if:"which fzf"

# =============================================================================
# Themes
# =============================================================================
zplug "~/.config/zsh/themes", from:local, as:theme, use:$ZSH_THEME.zsh-theme
zplug "romkatv/powerlevel10k", use:powerlevel10k.zsh-theme
# Base16 Shell
BASE16_SHELL_SET_BACKGROUND=false
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        eval "$("$BASE16_SHELL/profile_helper.sh")"
