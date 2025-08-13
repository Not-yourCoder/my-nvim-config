return {
  -- Core LSP plumbing
  { "neovim/nvim-lspconfig" },

  -- (Optional but recommended) server manager
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate",
    config = true,
  },
  { "williamboman/mason-lspconfig.nvim" },

  -- Load our LSP setups after plugins are ready
  {
    "nvim-lua/plenary.nvim",
    config = function()
      require("lsp") -- lua/lsp/init.lua
    end,
  },
}

