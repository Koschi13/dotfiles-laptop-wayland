[ -d "$HOME/bin" ] && export PATH="$HOME/bin:$PATH"
[ -d "$HOME/.local/bin" ] && export PATH="${HOME}/.local/bin/:${PATH}"
[ -d "$HOME/.cargo/bin" ] && export PATH="${HOME}/.cargo/bin/:${PATH}"
[ -d "/usr/lib/jvm/java-11-openjdk/bin" ] && export PATH="/usr/lib/jvm/java-11-openjdk/bin/:$PATH"
