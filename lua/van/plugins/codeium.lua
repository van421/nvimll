return {
	"Exafunction/codeium.vim",
	event = "BufEnter",
	config = function()
		local g = vim.g
		local keymap = vim.keymap

		g.codeium_no_map_tab = false

		keymap.set("i", "<C-enter>", function()
			return vim.fn["codeium#Accept"]()
		end, { expr = true })
		keymap.set("i", "<C-'>", function()
			return vim.fn["codeium#CycleCompletions"](1)
		end, { expr = true })
		keymap.set("i", "<C-;>", function()
			return vim.fn["codeium#CycleCompletions"](-1)
		end, { expr = true })
		keymap.set("i", "<C-x>", function()
			return vim.fn["codeium#Clear"]()
		end, { expr = true })
	end,
}
