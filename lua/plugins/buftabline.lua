return {
	"jose-elias-alvarez/buftabline.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local buftabline = require("buftabline")
		buftabline.setup({
			tab_format = "#{i} #{b}",
		})

		require("keymaps.buftabline")
	end,
}
