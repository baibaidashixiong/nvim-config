require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

require("mason-lspconfig").setup({
  -- ensure installed, fill as needed
  ensure_installed = {
    "lua_ls",
    "clangd",
    "jdtls",
    "pyre",
  },
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").lua_ls.setup {
  capabilities = capabilities,
}
require("lspconfig").clangd.setup {
  cmd = {
    "clangd",
    "--query-driver=/usr/bin/clang++",
    "--clang-tidy",
    "--clang-tidy-checks=performance-*,bugprone-*",
  },
  filetypes = { "c", "cpp" },
  capabilities = capabilities,
}
require("lspconfig").jdtls.setup {}
require("lspconfig").pyre.setup {}
