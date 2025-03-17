-- General settings
vim.opt.clipboard = "unnamedplus" -- Use system clipboard
vim.opt.nu = true                 -- Show line numbers
vim.opt.relativenumber = true     -- Show relative line numbers

-- Tab and indentation
vim.opt.tabstop = 4        -- Number of spaces tabs count for
vim.opt.softtabstop = 4    -- Number of spaces inserted for a tab
vim.opt.shiftwidth = 4     -- Size of an indent
vim.opt.expandtab = true   -- Use spaces instead of tabs
vim.opt.wrap = true        -- Enable line wrapping
vim.opt.smartindent = true -- Enable smart indentation
vim.opt.scrolloff = 8      -- Keep 8 lines visible when scrolling
vim.opt.sidescrolloff = 8  -- Keep 8 columns visible when side-scrolling

-- Files and backup
vim.opt.swapfile = false                                    -- Don't use swapfile
vim.opt.backup = false                                      -- Don't create backup files
vim.opt.undodir = os.getenv("HOME") .. "/.config/nvim/undo" -- Persistent undo history
vim.opt.undofile = true                                     -- Enable persistent undo

-- Search
vim.opt.hlsearch = false -- Don't highlight all search results
vim.opt.incsearch = true -- Show search results as you type

-- Appearance
vim.opt.cursorline = true    -- Highlight the current line
vim.opt.termguicolors = true -- True color support

-- Netrw (file explorer) settings
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
