

# Neovim Configuration

This repository contains my custom Neovim configuration, built with Lua and utilizing the Lazy plugin manager. The setup includes various plugins for autocompletion, LSP, Git integration, UI enhancements, and more. It's designed to work across Linux, macOS, and Windows.

## Project Structure
```plaintext
├── init.lua                   # Main configuration file
├── lazy-lock.json              # Lock file for Lazy plugin manager
├── lua
│   ├── plugins                 # Folder containing individual plugin configurations
│   ├── plugins.lua             # Plugin manager setup and plugin list
│   └── vim-options.lua         # Vim-related options and settings
└── pack
    └── Exafunction             # Directory for additional plugin packages
```

### Key Plugins
- **autopair.lua**: Automatically closes pairs like brackets and parentheses.
- **colortheme.lua**: Color theme management (with many themes commented out).
- **completions.lua**: Autocompletion setup.
- **git-stuff.lua**: Git integration tools.
- **lsp-config.lua**: Language server protocol (LSP) configuration.
- **misc.lua**: Miscellaneous plugin settings.
- **telescope.lua**: Fuzzy finder and search.
- **ui.lua**: General UI tweaks.
- **codeium.lua**: Codeium for AI assistance (commented out in favor of Copilot, but can be re-enabled).
- **comment.lua**: Commenting utilities.
- **debugging.lua**: Debugging tools.
- **harpoon.lua**: Navigation between files.
- **lualine.lua**: Status line.
- **neo-tree.lua**: File explorer.
- **none-ls.lua**: Linting and formatting.
- **treesitter.lua**: Syntax highlighting and parsing.
- **vim-be-good.lua**: Plugin for improving Vim proficiency.

### Special Notes
- **Codeium** is commented out in favor of **Copilot**, but you can uncomment it in `codeium.lua` if you'd prefer to use it.
- There are several **color themes** included, but only one is active. Others are commented out in `colortheme.lua`.

## Installation

### Prerequisites
- **Neovim v0.8+** is required for this configuration.
- **Git** must be installed to clone the repository and install plugins.

### Steps for Installation

1. **Clone the repository**:
   ```bash
   git clone https://github.com/yourusername/nvim ~/.config/nvim
   ```

2. **Install the plugins**:
    Plugins will automatically install when neovim is opened

### OS-Specific Instructions

#### Linux and macOS

1. Make sure **Neovim** is installed:
   ```bash
   sudo apt install neovim  # For Ubuntu/Debian
   brew install neovim      # For macOS
   ```

2. After cloning the repository, follow the plugin installation steps mentioned above.

#### Windows

1. Install Neovim from [Neovim's official website](https://neovim.io/).
2. Clone the repository into `C:\Users\<YourUsername>\AppData\Local\nvim`:
   ```bash
   git clone https://github.com/yourusername/nvim C:\Users\<YourUsername>\AppData\Local\nvim
   ```

3. Open Neovim and run `:Lazy install` to install plugins.

### Usage
- To start Neovim with this configuration, simply run:
  ```bash
  nvim
  ```

- Plugins and configurations will load automatically.

## Customization

- **Uncomment Codeium**: If you'd like to use **Codeium** instead of **Copilot**, navigate to `lua/plugins/codeium.lua` and uncomment the necessary lines.
- **Color Themes**: To change color themes, go to `lua/plugins/colortheme.lua` and uncomment your preferred theme or add whichever one you prefer.

## License
This project is licensed under the MIT License.


