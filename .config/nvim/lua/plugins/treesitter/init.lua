local rootDir = ... .. "."

return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function(_, opts)
		require("nvim-treesitter.configs").setup(opts)
	end,
	opts = require(rootDir .. "settings"),
	dependencies = { "hiphish/rainbow-delimiters.nvim" },
}
