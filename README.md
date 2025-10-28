# Neovim Usage Guide

A comprehensive guide to learning and using Neovim effectively, including setup instructions and essential command-line tools.

## Overview

This repository serves as a learning resource for using Neovim along with complementary tools that enhance your workflow:

- **Neovim**: Modern, extensible text editor based on Vim
- **fzf**: Fuzzy finder for quick file navigation
- **ripgrep**: Fast search tool for finding text across files
- **bat**: Enhanced file viewer with syntax highlighting

## Prerequisites

- macOS (using Homebrew)
- [Homebrew](https://brew.sh/) package manager installed

## Installation

Install all required tools using Homebrew:

```bash
# Install Neovim
brew install neovim

# Install fuzzy finder for quick file navigation
brew install fzf

# Install ripgrep for fast text search
brew install ripgrep

# Install bat for enhanced file viewing
brew install bat
```

## Getting Started with Neovim

### Launching Neovim

```bash
# Open Neovim
nvim

# Open a specific file
nvim filename.txt

# Open at a specific line
nvim +10 filename.txt
```

### Basic Neovim Commands

Neovim operates in different modes:

**Normal Mode** (default mode for navigation and commands)
- `i` - Enter insert mode at cursor
- `a` - Enter insert mode after cursor
- `o` - Insert new line below and enter insert mode
- `O` - Insert new line above and enter insert mode
- `v` - Enter visual mode
- `:` - Enter command mode

**Insert Mode** (for typing text)
- `Esc` or `Ctrl+[` - Return to normal mode

**Command Mode** (for executing commands)
- `:w` - Save file
- `:q` - Quit
- `:wq` or `:x` - Save and quit
- `:q!` - Quit without saving

### Navigation

- `h`, `j`, `k`, `l` - Move left, down, up, right
- `w` - Jump to next word
- `b` - Jump to previous word
- `0` - Jump to start of line
- `$` - Jump to end of line
- `gg` - Jump to start of file
- `G` - Jump to end of file
- `Ctrl+d` - Scroll down half page
- `Ctrl+u` - Scroll up half page

### Editing

- `x` - Delete character under cursor
- `dd` - Delete line
- `yy` - Yank (copy) line
- `p` - Paste after cursor
- `u` - Undo
- `Ctrl+r` - Redo
- `.` - Repeat last command

### Searching

- `/pattern` - Search forward
- `?pattern` - Search backward
- `n` - Next match
- `N` - Previous match
- `*` - Search for word under cursor

## Tools Overview

### Neovim
A hyperextensible Vim-based text editor that provides better plugin architecture and asynchronous job control.

### fzf
A command-line fuzzy finder that enables quick file and content searching within your projects.

### ripgrep
An extremely fast grep alternative that recursively searches directories for regex patterns.

### bat
A `cat` clone with syntax highlighting and Git integration, useful for previewing files.

## Configuration

Neovim configuration files are located at:
- `~/.config/nvim/init.lua` (Lua configuration, recommended)
- `~/.config/nvim/init.vim` (VimScript configuration)

### Basic Configuration Example

Create `~/.config/nvim/init.lua`:

```lua
-- Enable line numbers
vim.opt.number = true

-- Enable relative line numbers
vim.opt.relativenumber = true

-- Set tab width
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

-- Enable mouse support
vim.opt.mouse = 'a'

-- Highlight search results
vim.opt.hlsearch = true

-- Enable smart case searching
vim.opt.ignorecase = true
vim.opt.smartcase = true
```

## Using the Installed Tools

### fzf Integration
- Quickly search and open files in your project
- Can be integrated with Neovim plugins like telescope.nvim

### ripgrep
- Fast text search across your entire project
- Used by many Neovim plugins for searching

### bat
- Preview files with syntax highlighting
- Useful for viewing files before opening

## Running Claude Code CLI in Neovim

You can run Claude Code CLI directly within Neovim using the built-in terminal.

### Using Terminal Mode

1. **Open a terminal inside Neovim:**
   ```
   :term
   ```

2. **Execute Claude Code CLI:**
   ```bash
   claude
   ```

3. **Terminal Mode Navigation:**
   - `i` or `a` - Enter terminal insert mode (interact with terminal)
   - `Ctrl+\` then `Ctrl+n` - Exit terminal insert mode to normal mode
   - `:q` - Close the terminal window

### Quick Command Execution

You can also execute commands directly without entering terminal mode:

```
:!claude
```

### Terminal Window Management

- `:term` - Open terminal in current window
- `:split | term` - Open terminal in horizontal split
- `:vsplit | term` - Open terminal in vertical split
- `Ctrl+w` + `w` - Switch between windows
- `Ctrl+w` + `q` - Close current window

### Example Workflow

1. Open your project in Neovim
2. Split window vertically: `:vsplit | term`
3. Run Claude Code: `claude`
4. Switch between code and Claude Code using `Ctrl+w` + `w`
5. Edit files based on Claude's suggestions in the other pane

## Next Steps

1. Practice basic Neovim commands in the built-in tutorial: `:Tutor`
2. Configure Neovim with your preferred settings
3. Install a plugin manager like [lazy.nvim](https://github.com/folke/lazy.nvim) or [packer.nvim](https://github.com/wbthomason/packer.nvim)
4. Explore plugins that enhance Neovim functionality
5. Learn advanced Vim motions and commands

## Learning Resources

### Tutorials
- `:Tutor` - Built-in Neovim tutorial (highly recommended)
- [OpenVim](https://www.openvim.com/) - Interactive Vim tutorial
- [Vim Adventures](https://vim-adventures.com/) - Learn Vim through a game

### Documentation
- [Neovim Documentation](https://neovim.io/doc/)
- [Vim Cheat Sheet](https://vim.rtorr.com/)
- `:help` - Access Neovim's built-in help system

### Tool Resources
- [fzf GitHub](https://github.com/junegunn/fzf)
- [ripgrep GitHub](https://github.com/BurntSushi/ripgrep)
- [bat GitHub](https://github.com/sharkdp/bat)

## Tips for Learning

1. Start with the `:Tutor` command - it's the best way to learn Neovim basics
2. Practice consistently - even 15 minutes a day makes a difference
3. Don't try to learn everything at once - focus on basic movements first
4. Keep a cheat sheet handy while learning
5. Be patient - it takes time to build muscle memory
