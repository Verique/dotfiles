local rootDir = ... .. "."

return {
	"kyazdani42/nvim-tree.lua",
	config = function()
		local keymaps = require(rootDir .. "keymaps")
		keymaps.setup()
		require("nvim-tree").setup(
			vim.tbl_deep_extend(
				"force",
				require(rootDir .. "settings"),
				require(rootDir .. "appearance"),
				{ on_attach = keymaps.setTreeKeys }
			)
		)
	end,
	dependencies = { "kyazdani42/nvim-web-devicons" },
}
