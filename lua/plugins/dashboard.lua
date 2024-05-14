return {
	"nvimdev/dashboard-nvim",
	event = "VimEnter",
	config = function()
		local dashboard = require("dashboard")
		dashboard.setup({})
    vim.cmd("Dashboard")
	end,
	dependencies = { { "nvim-tree/nvim-web-devicons" } },
}
