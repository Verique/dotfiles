local M = {}

M.on_attach_keymaps = function(client, bufnr)
	local wk = require("user.keymaps.helpers")
	local opts = { buffer = bufnr }

	wk.addGroup("<Leader>l", "LSP Actions", { "n", "v" })
	wk.addWkKey("n", "K", "", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
	wk.addWkKey({ "n", "v" }, "<Leader>la", "Code Action", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)
	wk.addWkKey({ "n", "v" }, "<Leader>lf", "Format Document", "<cmd>lua vim.lsp.buf.format{ async = true }<cr>", opts)
	wk.addWkKey("n", "<Leader>lr", "Rename", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
	wk.addWkKey("n", "<Leader>lh", "Previous Diagnostic", "<cmd>lua vim.diagnostic.goto_prev({severity = {min = vim.diagnostic.severity.ERROR}})<cr>", opts)
	wk.addWkKey("n", "<Leader>ll", "Next Diagnostic", "<cmd>lua vim.diagnostic.goto_next({severity = {min = vim.diagnostic.severity.ERROR}})<cr>", opts)
	wk.addWkKey("n", "<Leader>lq", "Diagnostic List", "<cmd>lua vim.diagnostic.setloclist()<CR>", opts)
	wk.addWkKey("n", "<Leader>ls", "Show signature help", "<cmd>lua vim.lsp.buf.signature_help()<cr>", opts)
	wk.addWkKey("n", "gD", "Go to Declaration", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
	wk.addWkKey("n", "gd", "Go to Definition", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
	wk.addWkKey("n", "gl", "View Diagnostic", '<cmd>lua require"user.lsp.keymaps".show_message()<CR>', opts)
	wk.addWkKey("n", "gi", "Go to Implementation", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
	wk.addWkKey("n", "gr", "Go to References", "<cmd>lua vim.lsp.buf.references()<CR>", opts)

	if client.name == "vtsls" then
		wk.addWkKey("n", "<Leader>lo", "Organize Imports", "<cmd>VtsExec organize_imports<cr>", opts)
		wk.addWkKey("n", "<Leader>lI", "Import All", "<cmd>VtsExec add_missing_imports<cr>", opts)
        wk.addWkKey("n", "gd", "Go to Definition", "<cmd>VtsExec goto_source_definition<cr>", opts)
        wk.addWkKey("n", "gR", "Go to File References", "<cmd>VtsExec file_references<cr>", opts)
	end
end

return M
