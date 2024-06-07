local rootDir = ... .. "."

return {
	"romgrk/barbar.nvim",
	init = function()
		vim.g.barbar_auto_setup = false
	end,
	config = function(_, opts)
		require("barbar").setup(opts)
		require(rootDir .. "keymaps").setup()
	end,
	opts = vim.tbl_deep_extend("force", require(rootDir .. "settings"), require(rootDir .. "appearance")),
}
