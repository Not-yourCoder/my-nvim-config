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


map("n", "<leader>r", ":GoRun<CR>")
map("n", "<A-j>", ":m .+1<CR>==", { noremap = true, silent = true })-- In your keymaps.lua
map("n", "<leader>dq", 'vi"d', { desc = "Delete inside double quotes" })
map("n", "<leader>dQ", 'va"d', { desc = "Delete inside double quotes" })

map("n", "<A-k>", ":m .-2<CR>==", { noremap = true, silent = true })

