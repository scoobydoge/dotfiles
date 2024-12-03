vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

local keymap = vim.keymap

keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" })

keymap.set("n", "<Tab>", ":bn<CR>", { desc = "Go to next buffer" })
keymap.set("n", "<S-Tab>", ":bp<CR>", { desc = "Go to previous buffer" })
keymap.set("n", "<leader>b", ":new<CR>", { desc = "Create new buffer" })
keymap.set("n", "<leader>q", ":bd<CR>", { desc = "Delete current buffer" })

keymap.set("n", "<C-s>", ":w<CR>", { desc = "Save" })
