local rootDir = ... .. "."

return {
	"numToStr/Comment.nvim",
	config = function()
		local keymaps = require(rootDir .. "keymaps")
		keymaps.setup()
		require("ts_context_commentstring").setup({ enable_autocmd = false })
		require("Comment").setup(vim.tbl_deep_extend("force", require(rootDir .. "settings"), keymaps.pluginKeymaps))
	end,
	dependencies = { "JoosepAlviste/nvim-ts-context-commentstring" },
}
