# Add the user's local bin directory to the PATH environment variable,
# ensuring that executables in ~/.local/bin are prioritized.
export PATH="$HOME/.local/bin:$PATH"


# Check if the "pyenv" command is available, and if so, initialize pyenv.
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# Initialize Homebrew's shell environment to make its tools available in the shell.
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# Set an environment variable for the alias used by the "thefuck" tool.
export THEFUCK_ALIAS=fix

# Create an alias for managing dotfiles using Git, specifying the Git directory
# and working tree to avoid conflicts with other Git repositories.
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
. "$HOME/.cargo/env"

export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

export LDFLAGS="-L/usr/lib/x86_64-linux-gnu/"
export CPPFLAGS="-I/usr/include/"
export PYTHON_CONFIGURE_OPTS="--enable-shared"
export PYTHONDONTWRITEBYTECODE=1


