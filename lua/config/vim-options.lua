vim.opt.timeout = true -- Enable timeout
vim.opt.timeoutlen = 300 -- Lower than default (1000) to quickly trigger which-key

-- Set to true if you have a Nerd Font installed and selected in the terminal
vim.g.have_nerd_font = true

vim.opt.termguicolors = true -- Enable 24-bit RGB colour in the TUI

vim.opt.encoding = "utf-8" -- The encoding displayed
vim.opt.fileencoding = "utf-8" -- The encoding written to file
vim.opt.clipboard = "unnamed" -- Use system clipboard

vim.opt.number = true -- Print line number
vim.opt.numberwidth = 5 -- Set the width of line numbers

vim.opt.cursorline = true -- Enable highlighting of the current line
vim.opt.laststatus = 3 -- global statusline

vim.opt.showmode = false -- Dont show mode since we have a statusline
vim.opt.wrap = false -- Disable line wrap

vim.opt.tabstop = 2 -- Number of spaces that a <Tab> in the file counts for
vim.opt.shiftwidth = 2 -- Number of spaces to use for each step of (auto)indent
vim.opt.expandtab = true -- Use spaces instead of tabs

vim.opt.ignorecase = true -- case insensitive
vim.opt.smartcase = true -- use case if any caps used

vim.opt.swapfile = false -- Disable swap file

vim.cmd("set rtp+=/usr/local/opt/fzf")

-- Resize window using <ctrl> arrow keys
vim.keymap.set("n", "<C-Up>", "<cmd>resize +2<cr>", { desc = "Increase Window Height" })
vim.keymap.set("n", "<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease Window Height" })
vim.keymap.set("n", "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease Window Width" })
vim.keymap.set("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase Window Width" })

-- quit
vim.keymap.set("n", "<leader>qq", "<cmd>qa<cr>", { desc = "Quit All" })

-- Disable folding on alpha buffer
vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
