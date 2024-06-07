local root_pattern = require("lspconfig.util").root_pattern

return {
	handlers = {
		["textDocument/definition"] = require("omnisharp_extended").handler,
	},
	enable_editorconfig_support = true,
	enable_ms_build_load_projects_on_demand = false,
	enable_roslyn_analyzers = true,
	filetypes = { "cs", "vb", "cshtml" },
	organize_imports_on_format = false,
    enable_import_completion = false,
	sdk_include_prereleases = true,
    analyze_open_documents_only = true,

	root_dir = function(path)
		-- Make sure an sln doesn't already exist before trying to use the nearest csproj file
		return root_pattern("*.sln")(path) or root_pattern("*.csproj")(path)
	end,
}
