local gitsigns = require("gitsigns")

local opts = {
  noremap = true,
  silent = true,
}

local keymap = vim.keymap.set

function next_hunk()
  if vim.wo.diff then
    vim.cmd.normal({ "]c", bang = true })
  else
    gitsigns.nav_hunk("next")
  end
end

function previous_hunk()
  if vim.wo.diff then
    vim.cmd.normal({ "[c", bang = true })
  else
    gitsigns.nav_hunk("prev")
  end
end

opts.desc = "Git blame line"
keymap("n", "gb", gitsigns.blame_line, opts)

opts.desc = "Toggle deleted lines"
keymap("n", "td", gitsigns.toggle_deleted, opts)

opts.desc = "Go to next hunk"
keymap("n", "]c", next_hunk, opts)

opts.desc = "Go to previous hunk"
keymap("n", "[c", previous_hunk, opts)
