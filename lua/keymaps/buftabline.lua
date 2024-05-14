local opts = {
noremap = true,
  silent = true,
}

local keymap = vim.keymap.set

opts.desc = "Go to next buffer"
keymap("n", "<tab>", ":BufNext<CR>", opts)

opts.desc = "Go to previous buffer"
keymap("n", "<S-tab>", ":BufPrev<CR>", opts)

opts.desc = "Close current buffer"
keymap("n", "<leader>x", ":enew<bar>bd #<CR>", opts)
