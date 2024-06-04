return function(client, bufnr)
	vim.notify("[LSP] " .. client.name .. " was attached!", vim.log.levels.INFO)
	require("user.keymaps.lsp-keymaps").on_attach_keymaps(client, bufnr)
	require("illuminate").on_attach(client)
end
