local null_ls = require("null-ls")

local setup = function()
	null_ls.setup({
		sources = {
			--[[ null_ls.builtins.diagnostics.eslint_d.with({ only_local = "node_modules/.bin" }), ]]
			--[[ null_ls.builtins.code_actions.eslint_d.with({ only_local = "node_modules/.bin" }), ]]
			null_ls.builtins.formatting.prettierd,
			null_ls.builtins.formatting.stylua,
		},
		debug = false,
		root_dir = require("lspconfig").util.root_pattern("package.json"),
		-- Format on save
		-- on_attach = function(client)
		--     if client.resolved_capabilities.document_formatting then
		--         vim.cmd([[
		--         augroup LspFormatting
		--             autocmd! * <buffer>
		--             autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()
		--         augroup END
		--         ]])
		--     end
		-- end,
	})
end

return { setup = setup }
