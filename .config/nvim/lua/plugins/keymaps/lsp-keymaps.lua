local M = {}

M.on_attach_keymaps = function(client, bufnr)
	local keys = require("common.keymap-helpers")
	local opts = { buffer = bufnr }

	keys.addGroup("<Leader>l", "LSP Actions", { "n", "v" })
	keys.add("n", "K", "", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
	keys.add({ "n", "v" }, "<Leader>la", "Code Action", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)
	keys.add({ "n", "v" }, "<Leader>lf", "Format Document", "<cmd>lua vim.lsp.buf.format{ async = true }<cr>", opts)
	keys.add("n", "<Leader>lr", "Rename", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
	keys.add("n", "<Leader>lh", "Previous Diagnostic", "<cmd>lua vim.diagnostic.goto_prev({severity = {min = vim.diagnostic.severity.ERROR}})<cr>", opts)
	keys.add("n", "<Leader>ll", "Next Diagnostic", "<cmd>lua vim.diagnostic.goto_next({severity = {min = vim.diagnostic.severity.ERROR}})<cr>", opts)
	keys.add("n", "<Leader>lk", "Show Diagnostic", "<cmd>lua vim.diagnostic.open_float()<cr>", opts)
	keys.add("n", "<Leader>lq", "Diagnostic List", "<cmd>lua vim.diagnostic.setloclist()<CR>", opts)
	keys.add("n", "<Leader>ls", "Show signature help", "<cmd>lua vim.lsp.buf.signature_help()<cr>", opts)
	keys.add("n", "gD", "Go to Declaration", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
	keys.add("n", "gd", "Go to Definition", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
	keys.add("n", "gl", "View Diagnostic", '<cmd>lua require"user.lsp.keymaps".show_message()<CR>', opts)
	keys.add("n", "gi", "Go to Implementation", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
	keys.add("n", "gr", "Go to References", "<cmd>lua vim.lsp.buf.references()<CR>", opts)

	if client.name == "vtsls" then
		keys.add("n", "<Leader>lo", "Organize Imports", "<cmd>VtsExec organize_imports<cr>", opts)
		keys.add("n", "<Leader>lI", "Import All", "<cmd>VtsExec add_missing_imports<cr>", opts)
        keys.add("n", "gd", "Go to Definition", "<cmd>VtsExec goto_source_definition<cr>", opts)
        keys.add("n", "gR", "Go to File References", "<cmd>VtsExec file_references<cr>", opts)
	end
end

return M
