-- if mason is installed, ensure servers are present
local ok_mason, mason = pcall(require, "mason")
if ok_mason then
  mason.setup()
  local ok_mlsp, mason_lsp = pcall(require, "mason-lspconfig")
  if ok_mlsp then
    mason_lsp.setup({
      ensure_installed = { "gopls", "ts_ls", "eslint" },
      automatic_installation = true,
    })
  end
end

-- load individual language configs
require("lsp.go")
require("lsp.ts")

