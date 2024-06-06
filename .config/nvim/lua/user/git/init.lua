local rootDir = ... .. '.'

return {
	"lewis6991/gitsigns.nvim",
	config = function()
		require(rootDir .. "keymaps").setup()
		require("gitsigns").setup(
			vim.tbl_deep_extend("force", require(rootDir .. "settings"), require(rootDir .. "appearance"))
		)
	end,
	dependencies = { "sindrets/diffview.nvim" },
}
