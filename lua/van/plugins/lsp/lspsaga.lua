return {
	"nvimdev/lspsaga.nvim",
	dependencies = {
		"nvim-treesitter/nvim-treesitter", -- optional
		"nvim-tree/nvim-web-devicons", -- optional
	},
	config = function()
		local lspsaga = require("lspsaga")
		lspsaga.setup({
			scroll_preview = { scroll_down = "<tab>", scroll_up = "<S-tab>" },
			definition = {
				edit = "<CR>",
			},
			ui = {
				colors = {
					normal_bg = "#033746",
				},
			},
		})
	end,
}
