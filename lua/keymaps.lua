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
keymap("n", "<leader>q2", "<Esc>:qa<CR>", opts)

-- Save file in insert mode
opts.desc = "Save file"
keymap("i", "<C-s>", "<Esc>:w<CR>i", opts)

-- Format json
opts.desc = "Format JSON file"
keymap("n", "<leader>fj", ":%!jq -S .<CR>", opts)

-- Diffview open and close
opts.desc = "Open Diffview"
keymap("n", "<leader>dio", "<Esc>:DiffviewOpen<CR>", opts)

opts.desc = "Close Diffview"
keymap("n", "<leader>dic", "<Esc>:DiffviewClose<CR>", opts)

