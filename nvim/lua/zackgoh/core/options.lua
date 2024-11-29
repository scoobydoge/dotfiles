-- Stock file explorer list style
vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

-- Show line numbers
opt.number = true

-- tabs & indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- Break lines at word boundaries
opt.linebreak = true

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- Enable yank to system clipboard and paste from system clipboard 
-- (Ensure clipboard tool like xclip is installed in the system)
opt.clipboard = "unnamedplus"
