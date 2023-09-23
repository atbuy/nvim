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


-- Exit neovim
keymap("n", "<leader>2", ":qa<CR>", opts)

