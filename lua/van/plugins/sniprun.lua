return {
	"michaelb/sniprun",
	event = "VeryLazy",
	build = "sh ./install.sh",
	opts = {
		display = { "Terminal" },
		live_display = { "VirtualTextOk", "TerminalOk" },
		selected_interpreters = { "Python3_fifo" },
		repl_enable = { "Python3_fifo" },
	},
	config = function(_, opts)
		local sniprun = require("sniprun")
		sniprun.setup(opts)
	end,
	keys = {
		{
			"<leader>sc",
			function()
				require("sniprun.display").close_all()
			end,
			desc = "Close",
		},
		{
			"<leader>sr",
			function()
				require("sniprun").run()
			end,
			desc = "Current",
		},
		{
			"<leader>si",
			function()
				require("sniprun").info()
			end,
			desc = "Info",
		},
		{
			"<leader>sl",
			function()
				require("sniprun.live_mode").toggle()
			end,
			desc = "Live Mode",
		},
		{
			"<leader>sp",
			function()
				require("sniprun").clear_repl()
			end,
			desc = "Clear REPL",
		},
		{
			"<leader>rs",
			function()
				require("sniprun").reset()
			end,
			desc = "Reset",
		},
		{
			"<leader>sr",
			function()
				require("sniprun").run("v")
			end,
			mode = { "v" },
			desc = "Selection",
		},
	},
}
