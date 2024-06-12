local rootDir = ... .. "."
local keymaps = require(rootDir .. "keymaps")

return {
	"numToStr/Comment.nvim",
	config = function(_, opts)
		require("ts_context_commentstring").setup(opts.commentstring)
		require("Comment").setup(opts.comment)
		keymaps.setup()
	end,
	opts = function()
		return {
			comment = vim.tbl_deep_extend("force", require(rootDir .. "settings"), keymaps.pluginKeymaps),
			commentstring = { enable_autocmd = false },
		}
	end,
	dependencies = { "JoosepAlviste/nvim-ts-context-commentstring" },
}
