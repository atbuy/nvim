local opts = {
  noremap = true,
  silent = true,
}

-- local term_opts = {
--   silent = true,
-- }

-- Shorten function name
local keymap = vim.keymap.set

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",


-- Set colortheme, because it doesn't work on startup
opts.desc = "Set color scheme to preferred theme"
keymap("n", "<leader>q1", ":colorscheme material-darker<CR>", opts)

-- Exit neovim
opts.desc = "Exit neovim"
keymap("n", "<leader>q2", ":qa<CR>", opts)

