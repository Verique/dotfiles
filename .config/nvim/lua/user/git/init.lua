local rootDir = ... .. "."

return {
	"lewis6991/gitsigns.nvim",
	config = function(_, opts)
		require("gitsigns").setup(opts)
		require(rootDir .. "keymaps").setup()
	end,
	opts = vim.tbl_deep_extend("force", require(rootDir .. "settings"), require(rootDir .. "appearance")),
	dependencies = { "sindrets/diffview.nvim" },
}
