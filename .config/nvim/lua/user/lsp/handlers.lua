local M = {}

local status_cmp_ok, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if not status_cmp_ok then
	vim.notify("cmp_nvim_lsp not found")
	return
end

local utils_ok, utils = pcall(require, "user.lsp.ts-utils")
if not utils_ok then
	vim.notify("lsp.ts-utils not found")
end

M.capabilities = vim.lsp.protocol.make_client_capabilities()
M.capabilities.textDocument.completion.completionItem.snippetSupport = true
M.capabilities = cmp_nvim_lsp.default_capabilities(M.capabilities)

M.setup = function()
	local signs = require("user.common.icons").diagnostics

	for _, sign in ipairs(signs) do
		vim.fn.sign_define(sign.name, { texthl = sign.name, text = sign.text, numhl = "" })
	end

	local config = {
		virtual_text = true, -- disable virtual text

		signs = {
			active = signs, -- show signs
		},
		update_in_insert = true,
		underline = true,
		severity_sort = true,
		float = {
			focusable = true,
			style = "minimal",
			border = "rounded",
			source = "always",
			header = "",
			prefix = "",
		},
	}

	vim.diagnostic.config(config)

	vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
		border = "rounded",
	})

	vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
		border = "rounded",
	})
end

M.on_attach = function(client, bufnr)
    vim.notify("[LSP] " .. client.name .. " was attached!")
	if client.name == "tsserver" then
		client.server_capabilities.documentFormattingProvider = false
		if utils_ok then
			utils.on_attach()
		end
	end

	if client.name == "lua_ls" then
		client.server_capabilities.documentFormattingProvider = false
	end

	require("user.keymaps.lsp-keymaps").on_attach_keymaps(client, bufnr)
	local status_ok, illuminate = pcall(require, "illuminate")
	if not status_ok then
		vim.notify("illuminate not found")
		return
	end
	illuminate.on_attach(client)
end

return M
