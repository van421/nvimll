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

		local g = vim.g
		g.lazygit_floating_window_winblend = 0 -- transparency of floating window
		g.lazygit_floating_window_scaling_factor = 0.9 -- scaling factor for floating window
		g.lazygit_floating_window_border_chars = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" } -- customize lazygit popup window border characters
		g.lazygit_floating_window_use_plenary = 0 -- use plenary.nvim to manage floating window if available
		g.lazygit_use_neovim_remote = 1 -- fallback to 0 if neovim-remote is not installed

		g.lazygit_use_custom_config_file_path = 0 -- config file path is evaluated if this value is 1
		g.lazygit_config_file_path = "" -- custom config file path
		-- OR
		g.lazygit_config_file_path = {} -- table of custom config file paths
	end,
}
