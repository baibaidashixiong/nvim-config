-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- empty setup using defaults
require("nvim-tree").setup({
	-- needed by project-----
  hijack_cursor = true,
	update_focused_file = {
		enable = true,
		update_root = true,
	},
	filters = {
		-- 不显示.开头的文件
		dotfiles = true,
		-- custom = { "" },
	},
  git = {
    ignore = false,
  },
})
