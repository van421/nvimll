return {
	"michaelb/sniprun",
	keys = "<leader>s",
	run = "sh ./install.sh",
	config = function()
		local sniprun = require("sniprun")
		local display = require("sniprun.display")
		sniprun.setup()
		local keymap = vim.keymap
		keymap.set("n", "<leader>sr", sniprun.run, {})
		keymap.set("n", "<leader>sc", display.close_all, {})
		keymap.set("v", "<leader>sv", ":'<,'>SnipRun<CR>")
	end,
}
