return {
	-- Utilities
	"nvim-lua/popup.nvim", -- An implementation of the Popup API from vim in Neovim
	"nvim-lua/plenary.nvim", -- Useful lua functions used ny lots of plugins
	"kyazdani42/nvim-web-devicons",

	-- Colorscheme
	{ "sainnhe/everforest", config = require("user.colorscheme").setup },

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
	{
		"lewis6991/gitsigns.nvim",
		config = require("user.gitsigns").setup,
		dependencies = { "sindrets/diffview.nvim" },
	},

	-- Tree
	{ "kyazdani42/nvim-tree.lua", config = require("user.nvimtree").setup },

	-- Comment
	{
		"numToStr/Comment.nvim",
		config = require("user.commenting").setup,
		dependencies = { "JoosepAlviste/nvim-ts-context-commentstring" },
	},

	-- Telescope
	{ "nvim-telescope/telescope.nvim", config = require("user.telescope").setup },

	-- Bufferline
	{ "romgrk/barbar.nvim", config = require("user.buffer-bar").setup },

	-- StatusLine
	{
		"nvim-lualine/lualine.nvim",
		config = require("user.lualine").setup,
		dependencies = { "arkav/lualine-lsp-progress" },
	},

	-- Treesitter (highlightning)
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = require("user.treesitter").setup,
	},
	"hiphish/rainbow-delimiters.nvim",

	-- Autopairs
	{ "windwp/nvim-autopairs", config = require("user.autopairs").setup },
	"windwp/nvim-ts-autotag",
	{ "folke/which-key.nvim", init = require("user.keymaps").init, config = require("user.keymaps").setup },
	"knubie/vim-kitty-navigator",
}
