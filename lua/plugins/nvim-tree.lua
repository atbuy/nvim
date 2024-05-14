local function on_attach(bufnr)
	local api = require("nvim-tree.api")
	api.config.mappings.default_on_attach(bufnr)

	-- -- Delete default mapping <C-e>
	vim.keymap.del("n", "<C-e>", { buffer = bufnr })
  vim.keymap.del("n", "f", { buffer = bufnr })
end

return {
	"nvim-tree/nvim-tree.lua",
	config = function()
		local nvim_tree = require("nvim-tree")
		nvim_tree.setup({
			on_attach = on_attach,
			view = {
				adaptive_size = false,
				side = "left",
				width = 30,
				preserve_window_proportions = true,
			},
		})

		-- Focus on tree on setup
		vim.cmd("NvimTreeFocus")

		require("keymaps.nvim-tree")
	end,
}
