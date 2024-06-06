return {
	-- Utilities

	-- Colorscheme
    require("user.colorscheme"),

	-- Completion
	{
		"hrsh7th/nvim-cmp",
		config = require("user.completion").setup,
		dependencies = {
			"L3MON4D3/LuaSnip",
			"saadparwaiz1/cmp_luasnip",
			"rafamadriz/friendly-snippets",
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-nvim-lua",
			"hrsh7th/cmp-cmdline",
		},
	},

	-- LSP
	{
		"williamboman/mason.nvim",
		config = require("user.lsp").setup,
		dependencies = {
			"neovim/nvim-lspconfig", -- enable LSP
			"williamboman/mason-lspconfig.nvim", -- simple to use language server installer
			"Hoffs/omnisharp-extended-lsp.nvim",
			"nvimtools/none-ls.nvim",
			"hrsh7th/cmp-nvim-lsp",
			"RRethy/vim-illuminate",
			"yioneko/nvim-vtsls",
		},
	},
	{
		"antosha417/nvim-lsp-file-operations",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-tree.lua",
		},
		config = function()
			require("lsp-file-operations").setup()
		end,
	},
	-- Surround
	{
		"kylechui/nvim-surround",
		config = require("user.surround").setup,
		version = "*",
		event = "VeryLazy",
	},

	-- Git
	require("user.git"),
	-- Tree
	require("user.filetree"),
	-- Bufferline
	require("user.bar-bar"),
	-- Comment
	require("user.comments"),
	-- Kitty Navigator
	require("user.kitty-navigator"),
	-- Zen mode
	require("user.zenmode"),

	-- Telescope
	require("user.telescope-search"),

	-- StatusLine
	{
		"nvim-lualine/lualine.nvim",
		config = require("user.lualine").setup,
		dependencies = { "arkav/lualine-lsp-progress" },
	},

	-- Treesitter (highlightning)
	require("user.treesitter"),

	-- Autopairs
	{ "windwp/nvim-autopairs", config = require("user.autopairs").setup, dependencies = { "hrsh7th/nvim-cmp" } },
	"windwp/nvim-ts-autotag",
	{ "folke/which-key.nvim", init = require("user.keymaps").init, config = require("user.keymaps").setup },
}
