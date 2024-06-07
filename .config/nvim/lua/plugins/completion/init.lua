local rootDir = ... .. "."

local autopairsSpec = {
	"windwp/nvim-autopairs",
	config = function(_, opts)
		require("nvim-autopairs").setup(opts)
		require("cmp").event:on("confirm_done", require("nvim-autopairs.completion.cmp").on_confirm_done())
	end,
	opts = require(rootDir .. "autopairs-settings"),
	dependencies = { "hrsh7th/nvim-cmp" },
}

return {
	"hrsh7th/nvim-cmp",
	config = require(rootDir .. "completion").setup,
	dependencies = {
		"L3MON4D3/LuaSnip",
		"saadparwaiz1/cmp_luasnip",
		"rafamadriz/friendly-snippets",
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-nvim-lua",
		"hrsh7th/cmp-cmdline",
		autopairsSpec,
		"windwp/nvim-ts-autotag",
	},
}
