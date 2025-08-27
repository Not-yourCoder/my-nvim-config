return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup({
      size = 20,
      open_mapping = [[<C-\>]], -- Ctrl + \ to toggle
      hide_numbers = true,
      shade_terminals = true,
      shading_factor = 2,
      direction = "float", -- float | horizontal | vertical | tab
      float_opts = {
        border = "curved",
      },
    })
  end,
}

