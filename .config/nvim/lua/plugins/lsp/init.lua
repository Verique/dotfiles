local setup = function()
    require("mason").setup(require("plugins.lsp.settings"))
	require("mason-lspconfig").setup({ ensure_installed = { "lua_ls", "jsonls", "omnisharp_mono", "vtsls" } })
	require("mason-lspconfig").setup_handlers({ require("plugins.lsp.server-settings.init") })
	require("plugins.lsp.vim-diagnostics").setup()
	require("plugins.lsp.none-ls").setup()
	require("plugins.lsp.on-attach").setup()
end

return {
	"williamboman/mason.nvim",
	config = setup,
	dependencies = {
		"neovim/nvim-lspconfig", -- enable LSP
		"williamboman/mason-lspconfig.nvim", -- simple to use language server installer
		"Hoffs/omnisharp-extended-lsp.nvim",
		"nvimtools/none-ls.nvim",
		"hrsh7th/cmp-nvim-lsp",
		"RRethy/vim-illuminate",
		"yioneko/nvim-vtsls",
		{
			"antosha417/nvim-lsp-file-operations",
			dependencies = { "nvim-lua/plenary.nvim", "nvim-tree/nvim-tree.lua" },
			config = function()
				require("lsp-file-operations").setup()
			end,
		},
	},
}
