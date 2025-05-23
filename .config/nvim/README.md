# Modular NeoVIM configuration
A highly modular, dynamic, and profile-driven Neovim configuration built using Lua.
Designed for maximum flexibility, scalability, and ease of customization.

## Features
- Fully Modular Setup: One purpose per file (plugins, options, keybinds, LSP, autocmds).
- Dynamic Plugin Loading: Enable/disable plugins easily via flags.
- Multiple Profiles: Configure separate environments (e.g., personal vs work).
- Powerful Utilities: Loader, merger, notifications, safe import helpers.
- Complete LSP Support: Mason, nvim-lspconfig, formatters, DAP integration.
- Lazy Loading Ready: Built to support lazy.nvim ecosystem.
- Future-proof Structure: Easy to extend with minimal effort.

## Structure

```bash
❯ ~/config/nvim
.
└── lua
    ├── globals
    │   ├── autocmds
    │   ├── core
    │   ├── keybinds
    │   ├── lsp
    │   │   └── servers
    │   ├── options
    │   └── plugins
    ├── profiles
    │   └── generic_profile
    │       ├── autocmds
    │       ├── keybinds
    │       ├── lsp
    │       │   └── servers
    │       ├── options
    │       ├── plugins
    │       └── snippets
    └── utils
   
```

## Installation

```bash
# 1. Backup your existing nvim config
mv ~/.config/nvim ~/.config/nvim.backup

# 2. Clone this repository
git clone https://github.com/dheebz/nvim ~/.config/nvim

# 3. Open Neovim and plugins will install automatically
nvim

```

## Configuration


## Plugin Managment


## LSP Setup


## Future Improvements
- Auto Profile switching base on git repo, hostname and ENV variables
- Add health checks for missing plugins / lsps 
- Add health checks for general functionality and loading
- Add health check for plugin naming conventions


## Final Notes
The configuration is designed to be highly customizable, enabling you to quickly develop and tailor profiles to meet the specific needs of your projects. Whether you're working on a personal project or collaborating within a team, this setup ensures flexibility and adaptability to streamline your workflow.
