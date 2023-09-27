require "core"

local custom_init_path = vim.api.nvim_get_runtime_file("lua/custom/init.lua", false)[1]

if custom_init_path then
  dofile(custom_init_path)
end

require("core.utils").load_mappings()

local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

-- bootstrap lazy.nvim!
if not vim.loop.fs_stat(lazypath) then
  require("core.bootstrap").gen_chadrc_template()
  require("core.bootstrap").lazy(lazypath)
end

dofile(vim.g.base46_cache .. "defaults")
vim.opt.rtp:prepend(lazypath)
require "plugins"


-- Open nvim tree automatically
local nvim_tree = require("nvim-tree.api")
nvim_tree.tree.open()
nvim_tree.tree.focus()

-- Change colorscheme for all windows (except nvim-tree)
vim.cmd("colorscheme material-darker")
vim.cmd("colorscheme material-darker")


-- Load keymaps
require("keymaps")

