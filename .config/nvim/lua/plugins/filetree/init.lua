local rootDir = ... .. "."

return {
	"kyazdani42/nvim-tree.lua",
	config = function(_, opts)
		require("nvim-tree").setup(opts)
		require(rootDir .. "keymaps").setup()
	end,
	opts = function()
		return vim.tbl_deep_extend(
			"force",
			require(rootDir .. "settings"),
			require(rootDir .. "appearance"),
			{ on_attach = require(rootDir .. "keymaps").setTreeKeys }
		)
	end,
	dependencies = { "kyazdani42/nvim-web-devicons" },
}
