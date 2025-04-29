# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# This improves shell startup time by preloading the prompt.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Source Powerlevel10k configuration if it exists.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Add local binaries to the PATH environment variable.
export PATH="$HOME/.local/bin:$PATH"

# Initialize pyenv if it is installed.
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# Set the location of Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set the Zsh theme to Powerlevel10k.
ZSH_THEME="powerlevel10k/powerlevel10k"

# Enable plugins: git, zsh-syntax-highlighting, and zsh-autosuggestions.
plugins=(git zsh-syntax-highlighting zsh-autosuggestions)

# Source the main Oh My Zsh script to initialize the shell.
source $ZSH/oh-my-zsh.sh

# Initialize Homebrew environment variables.
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# Set a custom alias for thefuck command to 'fix'.
export THEFUCK_ALIAS=fix

# Create an alias for managing dotfiles with a bare Git repository.
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'


export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

export LDFLAGS="-L/usr/lib/x86_64-linux-gnu/"
export CPPFLAGS="-I/usr/include/"
export PYTHON_CONFIGURE_OPTS="--enable-shared"



fpath+=~/.zfunc; autoload -Uz compinit; compinit

zstyle ':completion:*' menu select
