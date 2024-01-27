require "core"

local custom_init_path = vim.api.nvim_get_runtime_file("lua/custom/init.lua", false)[1]

if custom_init_path then
  dofile(custom_init_path)
end

require("core.utils").load_mappings()

local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  require("core.bootstrap").gen_chadrc_template()
  require("core.bootstrap").lazy(lazypath)
end

dofile(vim.g.base46_cache .. "defaults")
vim.opt.rtp:prepend(lazypath)
require "plugins"

-- Set to relational line numbers
vim.cmd("set rnu!")

-- Set foldmethod to indent and open all folds
vim.cmd("set foldmethod=indent")
vim.cmd("set foldlevel=20")


-- Open nvim tree automatically
local nvim_tree = require("nvim-tree.api")
nvim_tree.tree.open()
nvim_tree.tree.focus()

-- Setup diffview
require("diffview").setup()
require("nvim-web-devicons").setup()


-- Disable folds in Telescope
vim.api.nvim_create_autocmd("FileType", { pattern = "TelescopeResults", command = [[setlocal nofoldenable]] })

-- Setup better-comments
local better_comment_opts = require("custom.configs.better-comments")
require("better-comment").Setup({
  tags = better_comment_opts
})

-- Load keymaps
require("keymaps")

