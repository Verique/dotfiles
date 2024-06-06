local rootDir = ... .. '.'

return {
	"romgrk/barbar.nvim",
	init = function()
		vim.g.barbar_auto_setup = false
	end,
	config = function()
		require(rootDir .. "keymaps").setup()
		require("barbar").setup(
			vim.tbl_deep_extend("force", require(rootDir .. "settings"), require(rootDir .. "appearance"))
		)
	end,
}