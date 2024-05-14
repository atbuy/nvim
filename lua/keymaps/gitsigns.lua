local gitsigns = require("gitsigns")

local opts = {
  noremap = true,
  silent = true,
}

local keymap = vim.keymap.set

opts.desc = "Git blame line"
keymap("n", "gb", gitsigns.blame_line, opts)

opts.desc = "Toggle deleted lines"
keymap("n", "td", gitsigns.toggle_deleted, opts)
