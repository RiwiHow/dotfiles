if status is-interactive
    # Commands to run in interactive sessions can go here
end

# fish
set -g fish_greeting

# macOS
set -gx XDG_CONFIG_HOME $HOME/.config
set -gx XDG_CACHE_HOME $HOME/.cache

# homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# fnm
fnm env --use-on-cd --shell fish | source

# bun
set -gx BUN_INSTALL_CACHE_DIR $XDG_CACHE_HOME/bun
set -gx BUN_INSTALL_GLOBAL_DIR $HOME/.local/bun/global
set -gx BUN_INSTALL_BIN $HOME/.local/bun/bin

# less
set -gx LESSHISTFILE -

# uv
set -gx PATH $HOME/.local/bin $PATH

# gnupg
set -gx GNUPGHOME $XDG_CONFIG_HOME/gnupg
set -gx GPG_TTY $(tty)

# git
set -gx GIT_CONFIG_GLOBAL $XDG_CONFIG_HOME/.gitconfig

# ipython
set -gx IPYTHONDIR $XDG_CONFIG_HOME/ipython

# Python
set -gx PYTHON_HISTORY $XDG_CACHE_HOME/.python_history

# Codex
set -gx CODEX_HOME $XDG_CONFIG_HOME/codex

# pi
set -gx PI_CODING_AGENT_DIR $XDG_CONFIG_HOME/pi

# npm
set -gx npm_config_cache $XDG_CACHE_HOME/npm
