local null_ls = require("null-ls")

local setup = function()
	null_ls.setup({
		sources = {
			null_ls.builtins.formatting.prettierd,
			null_ls.builtins.formatting.stylua,
		},
		debug = false,
		root_dir = require("lspconfig").util.root_pattern("package.json"),
	})
end

return { setup = setup }
