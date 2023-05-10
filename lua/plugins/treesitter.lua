require'nvim-treesitter.configs'.setup {
  -- add different language
  ensure_installed = { "vim", "bash", "c", "cpp", "javascript", "json", "lua", "python"},


  highlight = { enable = true, },
  indent = { enable = true },

  -- Distinguish between different bracket colors
  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = nil,
  }
}
