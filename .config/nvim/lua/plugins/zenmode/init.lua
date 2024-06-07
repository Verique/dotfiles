local rootDir = ... .. "."

return {
	{
		"folke/zen-mode.nvim",
		config = function(_, opts)
			require("zen-mode").setup(opts)
			require(rootDir .. "keymaps").setup()
		end,
		opts = require(rootDir .. "settings"),
	},
}
