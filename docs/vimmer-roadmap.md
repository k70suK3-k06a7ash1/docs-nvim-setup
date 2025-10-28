# Vimmer Roadmap

A structured learning path to master Vim/Neovim from beginner to expert.

## Phase 1: Foundations (Week 1-2)

### Getting Comfortable with Modes

**Goal**: Understand and navigate between Vim's different modes

- [ ] Normal mode navigation
- [ ] Insert mode for text entry
- [ ] Visual mode for selection
- [ ] Command mode for operations

### Essential Movements

**Goal**: Move efficiently without arrow keys

- `h` `j` `k` `l` - Basic directional movement
- `w` `b` - Word forward/backward
- `e` - End of word
- `0` `$` - Start/end of line
- `gg` `G` - Start/end of file
- `{` `}` - Paragraph navigation

### Basic Operations

**Goal**: Perform common editing tasks

- `i` `a` `o` `O` - Enter insert mode in various ways
- `x` `dd` - Delete character/line
- `yy` `p` - Copy and paste
- `u` `Ctrl+r` - Undo and redo
- `:w` `:q` `:wq` - Save and quit

**Practice**: Complete `:Tutor` at least twice

## Phase 2: Efficiency (Week 3-4)

### Advanced Navigation

**Goal**: Jump to exact locations quickly

- `f` `F` `t` `T` - Find character in line
- `;` `,` - Repeat find forward/backward
- `*` `#` - Search word under cursor
- `/` `?` `n` `N` - Search in file
- `%` - Jump to matching bracket
- `Ctrl+o` `Ctrl+i` - Jump backward/forward in jump list

### Text Objects

**Goal**: Operate on semantic units

- `iw` `aw` - Inner word / around word
- `is` `as` - Inner sentence / around sentence
- `ip` `ap` - Inner paragraph / around paragraph
- `i"` `a"` - Inside quotes / around quotes
- `i(` `a(` - Inside parentheses / around parentheses
- `it` `at` - Inside tag / around tag

**Example Operations**:
- `ciw` - Change inner word
- `di"` - Delete inside quotes
- `yap` - Yank around paragraph
- `vit` - Select inside tag

### Combining Operators

**Goal**: Build complex commands with operators, motions, and counts

**Operators**:
- `c` - Change
- `d` - Delete
- `y` - Yank
- `>` `<` - Indent/unindent

**Pattern**: `[count][operator][motion]`

**Examples**:
- `d2w` - Delete 2 words
- `c$` - Change to end of line
- `y4j` - Yank 4 lines down
- `3dd` - Delete 3 lines
- `>ap` - Indent paragraph

**Practice**: Solve [Vim Golf](https://www.vimgolf.com/) challenges

## Phase 3: Productivity (Week 5-8)

### Registers

**Goal**: Master copy/paste with multiple buffers

- `"ayy` - Yank line into register 'a'
- `"ap` - Paste from register 'a'
- `"0p` - Paste from yank register
- `"+y` - Yank to system clipboard
- `"+p` - Paste from system clipboard
- `:reg` - View all registers

### Macros

**Goal**: Record and replay command sequences

- `qa` - Start recording macro in register 'a'
- `q` - Stop recording
- `@a` - Execute macro 'a'
- `@@` - Repeat last macro
- `5@a` - Execute macro 5 times

**Common Use Cases**:
- Formatting repetitive data
- Adding prefixes/suffixes to multiple lines
- Complex refactoring patterns

### Marks and Jumps

**Goal**: Navigate large files and multiple locations

- `ma` - Set mark 'a' at cursor
- `` `a `` - Jump to mark 'a'
- `'a` - Jump to line of mark 'a'
- `` `. `` - Jump to last change
- `''` - Jump to previous location
- `:marks` - View all marks

### Search and Replace

**Goal**: Make bulk changes efficiently

**Basic**:
- `:%s/old/new/g` - Replace all in file
- `:s/old/new/g` - Replace in current line
- `:%s/old/new/gc` - Replace with confirmation

**Advanced**:
- `:%s/\v(pattern)/\1/g` - Use capture groups
- `:%s/old/new/gi` - Case insensitive
- `:10,20s/old/new/g` - Replace in line range
- `:'<,'>s/old/new/g` - Replace in visual selection

**Practice**: Work on real projects, refactor code

## Phase 4: Configuration (Week 9-10)

### Understanding init.lua/init.vim

**Goal**: Customize Neovim to your workflow

**Essential Settings**:
```lua
-- Line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Indentation
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

-- Search
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true

-- UX improvements
vim.opt.mouse = 'a'
vim.opt.clipboard = 'unnamedplus'
vim.opt.splitright = true
vim.opt.splitbelow = true
```

### Key Mappings

**Goal**: Create custom shortcuts for common tasks

```lua
-- Set leader key
vim.g.mapleader = ' '

-- Quick save
vim.keymap.set('n', '<leader>w', ':w<CR>')

-- Clear search highlight
vim.keymap.set('n', '<leader>h', ':noh<CR>')

-- Window navigation
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-l>', '<C-w>l')

-- Move lines
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")
```

**Practice**: Build your personal configuration

## Phase 5: Plugin Ecosystem (Week 11-12)

### Plugin Manager

**Goal**: Install and manage plugins

**Recommended**: [lazy.nvim](https://github.com/folke/lazy.nvim)

### Essential Plugins

**File Navigation**:
- `telescope.nvim` - Fuzzy finder
- `nvim-tree.lua` - File explorer
- `harpoon` - Quick file switching

**Code Intelligence**:
- `nvim-lspconfig` - LSP support
- `nvim-cmp` - Autocompletion
- `treesitter` - Better syntax highlighting

**Git Integration**:
- `gitsigns.nvim` - Git decorations
- `fugitive.vim` - Git commands

**Quality of Life**:
- `which-key.nvim` - Key binding hints
- `autopairs` - Auto close brackets
- `comment.nvim` - Easy commenting

**Practice**: Install 3-5 plugins that match your workflow

## Phase 6: Advanced Techniques (Week 13+)

### Window and Buffer Management

**Windows**:
- `:split` `:vsplit` - Split windows
- `Ctrl+w` `h/j/k/l` - Navigate windows
- `Ctrl+w` `=` - Resize windows equally
- `Ctrl+w` `_` - Maximize height
- `Ctrl+w` `|` - Maximize width

**Buffers**:
- `:bnext` `:bprev` - Navigate buffers
- `:ls` - List buffers
- `:b <name>` - Switch to buffer
- `:bd` - Delete buffer

**Tabs**:
- `:tabnew` - New tab
- `gt` `gT` - Next/previous tab
- `:tabclose` - Close tab

### Command-Line Mode

**Goal**: Use Ex commands efficiently

- `:!` - Execute shell command
- `:.!` - Filter current line through command
- `:%!` - Filter entire file through command
- `:read !command` - Insert command output
- `:write !command` - Pass buffer to command

### Vim Script / Lua

**Goal**: Write custom functions and autocommands

**Example Autocommand**:
```lua
-- Auto-format on save
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.lua",
  callback = function()
    vim.lsp.buf.format()
  end,
})
```

**Example Function**:
```lua
-- Toggle relative line numbers
function ToggleRelativeNumber()
  vim.opt.relativenumber = not vim.opt.relativenumber:get()
end

vim.keymap.set('n', '<leader>n', ToggleRelativeNumber)
```

### Language-Specific Workflows

**Goal**: Optimize for your primary languages

- Configure LSP for your languages
- Set up formatters and linters
- Create snippets for common patterns
- Build custom commands for testing/building

## Continuous Improvement

### Daily Habits

1. **Use Vim motions exclusively** - No arrow keys
2. **Learn one new command per day**
3. **Refine your configuration weekly**
4. **Watch experienced Vimmers** - YouTube, Twitch
5. **Participate in the community** - r/neovim, Discord

### Resources

**Practice**:
- [Vim Adventures](https://vim-adventures.com/) - Gamified learning
- [Vim Golf](https://www.vimgolf.com/) - Efficiency challenges
- [OpenVim](https://www.openvim.com/) - Interactive tutorial

**Reading**:
- `:help` - Built-in documentation
- [Practical Vim](https://pragprog.com/titles/dnvim2/practical-vim-second-edition/) - Book
- [ThePrimeagen's Vim Course](https://www.youtube.com/c/ThePrimeagen) - Videos

**Community**:
- [r/neovim](https://www.reddit.com/r/neovim/) - Subreddit
- [Neovim Discourse](https://neovim.discourse.group/) - Forum
- [awesome-neovim](https://github.com/rockerBOO/awesome-neovim) - Plugin list

### Milestones

**Beginner** (Week 1-4):
- Can edit files without arrow keys
- Comfortable with basic operations
- Completed `:Tutor` multiple times

**Intermediate** (Week 5-8):
- Using text objects and operators fluently
- Created basic macros
- Customized configuration

**Advanced** (Week 9-12):
- Personalized plugin setup
- Custom key mappings
- Language-specific optimizations

**Expert** (Week 13+):
- Writing custom functions
- Contributing to plugins
- Vim motions are second nature

## Tips for Success

1. **Don't rush** - Speed comes from muscle memory, not memorization
2. **Focus on fundamentals** - Master Phase 1-2 before moving on
3. **Delete your .vimrc periodically** - Rebuild it to understand every line
4. **Pair with someone** - Teaching solidifies knowledge
5. **Be patient with yourself** - It takes weeks to feel productive

Remember: The goal isn't to know every command, but to think in Vim.
