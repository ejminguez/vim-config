# Neovim Configuration

A modern, feature-rich Neovim setup focused on development productivity with LSP support, code completion, and a clean UI.

## Features

- **Modern UI**: Catppuccin theme with transparent background and custom styling
- **File Navigation**: Neo-tree file explorer with hidden file support
- **Fuzzy Finding**: Telescope for quick file access and search
- **LSP Integration**: Built-in language server support for TypeScript and Markdown
- **Code Completion**: nvim-cmp with multiple sources (LSP, buffer, path, snippets)
- **Syntax Highlighting**: Treesitter for advanced syntax highlighting
- **Git Integration**: Gitsigns for git status in the editor
- **Keybinding Helper**: Which-key for discovering available commands
- **Window Management**: Easy window navigation and resizing

## Key Bindings

### General
- `Space` - Leader key
- `<leader>?` - Show buffer local keymaps (which-key)

### File Navigation
- `<leader><leader>` - Toggle Neo-tree file explorer
- `<leader>n` - Open Neo-tree and reveal current file
- `<C-p>` - Find files with Telescope

### Window Management
- `<leader><Left/Down/Up/Right>` - Navigate between windows
- `<leader>+` - Increase window height by 10
- `<leader>-` - Decrease window height by 5
- `<leader><` - Decrease window width by 10
- `<leader>>` - Increase window width by 10

### LSP Features
- `K` - Show hover documentation
- `gd` - Go to definition
- `<leader>ca` - Show code actions
- `[d` - Go to previous diagnostic
- `]d` - Go to next diagnostic
- `<leader>e` - Show diagnostics in floating window
- `<leader>fd` - Show diagnostics in Telescope

### Code Completion
- `<C-n>` - Select next suggestion
- `<C-p>` - Select previous suggestion
- `<C-Space>` - Trigger completion
- `<C-e>` - Abort completion
- `<Enter>` - Confirm selection

## Plugin Highlights

- **lazy.nvim**: Plugin manager
- **nvim-lspconfig**: Language Server Protocol support
- **nvim-cmp**: Completion engine
- **telescope.nvim**: Fuzzy finder
- **neo-tree.nvim**: File explorer
- **catppuccin**: Color scheme
- **which-key.nvim**: Keybinding helper
- **treesitter**: Advanced syntax highlighting
- **gitsigns.nvim**: Git integration
- **lualine.nvim**: Status line

## Installation

This configuration uses lazy.nvim for plugin management, which will automatically install itself and all plugins on first launch.

```bash
# Clone this repository to your Neovim config directory
git clone https://github.com/yourusername/nvim-config.git ~/.config/nvim

# Start Neovim
nvim
```

The first launch will install all plugins automatically.
