local opt = vim.opt

-- line number
opt.relativenumber = false
opt.number = true

--indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- void wrap
opt.wrap = true

-- cursor line
opt.cursorline = true

-- enable mouse
opt.mouse:append("a")

-- System shear board
opt.clipboard:append("unnamedplus")

-- search
opt.ignorecase = true
opt.smartcase = true

-- appearance
opt.termguicolors = true
opt.signcolumn = "yes"

-- set as default theme
-- vim.cmd[[colorscheme tokyonight-moon]]
vim.cmd[[colorscheme nightfox]]

