if status is-interactive
    # Commands to run in interactive sessions can go here
end

# macOS
set -gx XDG_CONFIG_HOME $HOME/.config

# homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# less
set -gx LESSHISTFILE -

# uv
set -gx PATH /Users/riwihow/.local/bin $PATH

# gnupg
set -gx GNUPGHOME /Users/riwihow/.config/gnupg
set -gx GPG_TTY $(tty)

# git
set -gx GIT_CONFIG_GLOBAL /Users/riwihow/.config/.gitconfig
