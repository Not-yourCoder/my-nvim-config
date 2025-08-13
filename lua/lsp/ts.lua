local lspconfig = require("lspconfig")
local common = require("lsp.common")

-- TypeScript/JavaScript Language Server
lspconfig.ts_ls.setup({
  on_attach = function(client, bufnr)
    -- (optional) if you plan to use external formatters (prettier), disable tsserver formatting:
    -- client.server_capabilities.documentFormattingProvider = false
    common.on_attach(client, bufnr)
  end,
  capabilities = common.capabilities,
  root_dir = lspconfig.util.root_pattern("package.json", "tsconfig.json", "jsconfig.json", ".git"),
})

-- ESLint (optional but handy)
lspconfig.eslint.setup({
  on_attach = common.on_attach,
  capabilities = common.capabilities,
  root_dir = lspconfig.util.root_pattern(".eslintrc", ".eslintrc.js", ".eslintrc.cjs", ".eslintrc.json", "package.json", ".git"),
})

