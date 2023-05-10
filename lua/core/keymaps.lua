vim.g.mapleader = " "

local keymap = vim.keymap
-- visual mode --
-- move one or more line --
-- line in visual then use shift+i/j
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- normal mode --
-- window
keymap.set("n", "<leader>sv", "<C-w>v") -- Horizontal add New Window
keymap.set("n", "<leader>sh", "<C-w>s") -- vertical add new window
-- disable highlight
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- plugins --
-- nvim-tree
keymap.set("n", "<leader>tr", ":NvimTreeToggle<CR>")
-- switch buffer
keymap.set("n", "<C-k>", ":bnext<CR>")
keymap.set("n", "<C-j>", ":bprevious<CR>")
