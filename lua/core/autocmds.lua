-- Remove all occurrences of a word
vim.api.nvim_create_user_command("RemoveWord", function(opts)
  vim.cmd(":%s/\\<" .. opts.args .. "\\>//g")
end, { nargs = 1 })

-- Auto format Go on save (uses go.nvim's :GoFmt)
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.go",
  callback = function()
    vim.cmd("GoFmt")
  end,
})

