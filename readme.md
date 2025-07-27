# 🧠 Arya's Neovim Configuration (Lua)

Welcome to my custom Neovim setup — tailored for **Go development**, blazing-fast navigation, and a beautiful UI using Lua and modern plugin managers. This setup is minimal yet powerful, featuring LSP, autocompletion, a file explorer, fuzzy finding, syntax highlighting, and more.

---

## ✨ Features

* 🡩‍💼 Go development support (`gopls`, `go.nvim`)
* 🧠 Intelligent autocompletion via `nvim-cmp`
* 📊 Built-in LSP support
* 🌈 Beautiful theme using `catppuccin`
* 🔍 Fuzzy finder with `telescope.nvim`
* 📂 File tree with `nvim-tree`
* 🌲 Treesitter syntax highlighting
* 🛠 Custom key mappings for speed

---

## 📦 Plugins

Powered by [`lazy.nvim`](https://github.com/folke/lazy.nvim), here's what this setup includes:

| Plugin                   | Purpose                               |
| ------------------------ | ------------------------------------- |
| `nvim-lspconfig`         | LSP setup for multiple languages      |
| `cmp-nvim-lsp`           | LSP-based autocompletion              |
| `nvim-cmp`               | Completion engine                     |
| `LuaSnip`                | Snippet engine                        |
| `nvim-treesitter`        | Syntax highlighting                   |
| `go.nvim` + `guihua.lua` | Go-specific tooling                   |
| `nvim-tree`              | File explorer                         |
| `telescope.nvim`         | Fuzzy finder for files, buffers, etc. |
| `catppuccin`             | Beautiful theme with transparency     |

---

## ⚙️ Key Mappings

| Keybinding   | Action                             |
| ------------ | ---------------------------------- |
| `<leader>e`  | Toggle file explorer (`nvim-tree`) |
| `<leader>f`  | Find files using Telescope         |
| `<leader>fg` | Live grep with Telescope           |
| `<leader>fb` | List open buffers                  |
| `<leader>fh` | Search help tags                   |
| `<leader>r`  | Run Go file with `GoRun`           |
| `Alt + j/k`  | Move lines down/up                 |

---

## 🔧 Auto Formatting

Automatically formats Go files on save using `GoFmt`:

```lua
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.go",
  callback = function()
    vim.cmd("GoFmt")
  end,
})
```

---

## 🎨 Theme: Catppuccin Mocha

* Uses `catppuccin` theme with `mocha` flavor.
* Transparent background enabled for terminal aesthetics.

---

## 🚀 Getting Started

1. Install [Neovim 0.9+](https://neovim.io)
2. Clone this config:

```bash
git clone https://github.com/drv-executioner/nvim-config ~/.config/nvim
```

3. Launch Neovim, and plugins will auto-install on first run:

```bash
nvim
```

---

## 📁 File Tree Integration

Toggle with:

```
<leader>e
```

Navigate between tree and file:

* Use `Ctrl + w w` to switch window focus.

---

## 💡 Tips

* Use `:LspInfo` to verify LSP status
* Use `:RemoveWord <word>` to remove all instances of a word in the file
* Customize theme in `catppuccin` setup

---

## 👨‍💼 Author

**Arya** — Learning Neovim, Go, and building cool things.

---

## 🗂 Folder Structure

```
~/.config/nvim/
├— init.lua         <-- Main config file
└— (all configs are inline in init.lua)
```

---

## 🧱 Inspired By

* [Lazy.nvim](https://github.com/folke/lazy.nvim)
* [ThePrimeagen](https://github.com/ThePrimeagen)
* [ray-x/go.nvim](https://github.com/ray-x/go.nvim)

---

## 📄 License

MIT — Use freely, modify as you like.

