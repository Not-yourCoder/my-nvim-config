local lspconfig = require("lspconfig")
local common = require("lsp.common")

lspconfig.gopls.setup({
  on_attach = common.on_attach,
  capabilities = common.capabilities,
  cmd = { "gopls" },
  filetypes = { "go", "gomod" },
  root_dir = lspconfig.util.root_pattern("go.mod", ".git"),
})
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.go",
  callback = function()
    vim.lsp.buf.code_action({
      context = { only = { "source.organizeImports" } },
      apply = true,
    })
  end,
})

