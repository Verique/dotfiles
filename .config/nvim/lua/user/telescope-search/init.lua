local rootDir = ... .. "."

return {
	"nvim-telescope/telescope.nvim",
	config = function(_, opts)
		require("telescope").setup(opts)
		require(rootDir .. "keymaps").setup()
	end,
	opts = function()
		return vim.tbl_deep_extend(
			"force",
			require(rootDir .. "appearance"),
			require(rootDir .. "settings"),
			require(rootDir .. "keymaps").getActionKeymaps(require("telescope.actions"))
		)
	end,
	dependencies = { "nvim-lua/plenary.nvim" },
}
