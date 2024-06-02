local settings = {
	ui = {
		border = "none",
		icons = {
			package_installed = "◍",
			package_pending = "◍",
			package_uninstalled = "◍",
		},
	},
	log_level = vim.log.levels.INFO,
	max_concurrent_installers = 4,
}

require("mason").setup(settings)
require("mason-lspconfig").setup({
	automatic_installation = true,
    ensure_installed = {"lua_ls", "jsonls", "omnisharp_mono"}
})

require("mason-lspconfig").setup_handlers({
	-- The first entry (without a key) will be the default handler
	-- and will be called for each installed server that doesn't have
    -- a dedicated handler.
	function(server_name) -- default handler (optional)
		local opts = {
			on_attach = require("user.lsp.handlers").on_attach,
			capabilities = require("user.lsp.handlers").capabilities,
		}

		local require_ok, conf_opts = pcall(require, "user.lsp.settings." .. server_name)
		if require_ok then
			opts = vim.tbl_deep_extend("force", conf_opts, opts)
		end

		require("lspconfig")[server_name].setup(opts)
	end,
})
