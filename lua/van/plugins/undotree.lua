return {
	"mbbill/undotree",
	keys = "U",
	config = function()
		-- 设置快捷键
		local keymap = vim.keymap
		keymap.set("n", "U", ":UndotreeToggle<CR>", { desc = "Toggle undotree" })
	end,
}
