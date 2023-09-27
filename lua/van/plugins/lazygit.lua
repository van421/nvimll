return {
	"kdheepak/lazygit.nvim",
	keys = "Lg",
	-- optional for floating window border decoration
	dependencies = {
		"nvim-telescope/telescope.nvim",
		"nvim-lua/plenary.nvim",
	},
	config = function()
		local telescope = require("telescope")
		telescope.load_extension("lazygit")

		local keymap = vim.keymap
		keymap.set("n", "Lg", ":LazyGit<CR>")
	end,
}
