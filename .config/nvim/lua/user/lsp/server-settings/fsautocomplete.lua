local a = require("lspconfig").util
return {
	settings = {
		cmd = { "fsautocomplete", "--adaptive-lsp-server-enabled" },
		filetypes = { "fsharp" },
		init_options = { AutomaticWorkspaceInit = true },
		root_dir = function(path)
			-- Make sure an sln doesn't already exist before trying to use the nearest csproj file
			return a.root_pattern("*.sln")(path) or a.root_pattern("*.fsproj")(path)
		end,
	},
}
