return {
	"romgrk/barbar.nvim",
	init = function()
		vim.g.barbar_auto_setup = false
	end,
	config = function()
		require("user.bar-bar.keymaps").setup()
		require("barbar").setup(
			vim.tbl_deep_extend("force", require("user.bar-bar.settings"), require("user.bar-bar.appearance"))
		)
	end,
}
