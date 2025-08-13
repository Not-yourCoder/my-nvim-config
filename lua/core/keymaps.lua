-- lua/core/keymaps.lua
local map = vim.keymap.set

-- Lazy-load Telescope when you press the mapping
map("n", "<leader>f", function()
  require("telescope.builtin").find_files()
end, { desc = "Find Files" })

map("n", "<leader>fg", function()
  require("telescope.builtin").live_grep()
end, { desc = "Live Grep" })

map("n", "<leader>fb", function()
  require("telescope.builtin").buffers()
end, { desc = "List Buffers" })

map("n", "<leader>fh", function()
  require("telescope.builtin").help_tags()
end, { desc = "Help Tags" })

map("n", "<leader>e", ":NvimTreeToggle<CR>", {desc = "Toggle Nvim tree"})
