local M = {}

M.on_attach = function(_, bufnr)
  local map = function(mode, lhs, rhs, desc)
    vim.keymap.set(mode, lhs, rhs, { noremap = true, silent = true, buffer = bufnr, desc = desc })
  end
  map("n", "gd", vim.lsp.buf.definition, "Go to definition")
  map("n", "K",  vim.lsp.buf.hover, "Hover")
  map("n", "<leader>rn", vim.lsp.buf.rename, "Rename")
  map("n", "gr", vim.lsp.buf.references, "References")
  map("n", "<leader>ca", vim.lsp.buf.code_action, "Code Action")
end

M.capabilities = require("cmp_nvim_lsp").default_capabilities()

return M

