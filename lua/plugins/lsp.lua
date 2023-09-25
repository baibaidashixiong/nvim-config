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
  capabilities = capabilities,
}
require("lspconfig").jdtls.setup {}
require("lspconfig").pyre.setup {}
