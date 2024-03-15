vim.g.mapleader = " "

local keymap = vim.keymap

local opt = {
  noremap = true, --  mapping will not be recursive
  silent = true,  -- the command will not display any output messages when executed
}


-- visual mode --
-- move a line down or up --
-- line in visual then use shift+j/k
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

-- Vista
keymap.set("n", "<leader>vs", ":Vista<CR>")
keymap.set("n", "<leader>vn", ":Vista nvim_lsp<CR>")

-- bufferline
  -- switch buffer
keymap.set("n", "<A-l>", ":bnext<CR>", opt)
keymap.set("n", "<A-h>", ":bprevious<CR>", opt)
  -- close buffer
keymap.set("n", "<C-w>", ":bd<CR>", opt)
keymap.set("n", "H", "<C-W>>", opt)
keymap.set("n", "L", "<C-W><", opt)
