return {
	"romgrk/barbar.nvim",
	dependencies = {
		"lewis6991/gitsigns.nvim",
		"nvim-tree/nvim-web-devicons",
	},
	init = function()
		vim.g.barbar_auto_setup = false
	end,
	opts = {},
	config = function(_, opts)
		require("barbar").setup(opts)
		require("keymaps.barbar")
	end,
	version = "^1.0.0",
}
