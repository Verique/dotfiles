local M = {}

M.setup = function()
	require("user.lsp.mason").setup()
	require("mason-lspconfig").setup({ ensure_installed = { "lua_ls", "jsonls", "omnisharp", "vtsls" } })
	require("mason-lspconfig").setup_handlers({ require("user.lsp.server-settings") })
	require("user.lsp.vim-diagnostics").setup()
	require("user.lsp.null-ls").setup()
end

return M
