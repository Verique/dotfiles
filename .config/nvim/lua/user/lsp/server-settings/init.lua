local basicCapabilities = vim.tbl_deep_extend(
	"force",
	vim.lsp.protocol.make_client_capabilities(),
	{ textDocument = { completion = { completionItem = { snippetSupport = true } } } }
)
local defaultCapabilities = require("cmp_nvim_lsp").default_capabilities(basicCapabilities)

local modifyDefaultWith = function(options)
	return vim.tbl_deep_extend("force", defaultCapabilities, options)
end

local overriddenCapabilities = {
	lua_ls = modifyDefaultWith({ documentFormattingProvider = false }),
    vtsls = modifyDefaultWith({ documentFormattingProvider = false }),
}

return function(server_name)
	local require_ok, conf_opts = pcall(require, "user.lsp.server-settings." .. server_name)

	local opts = {
		on_attach = require("user.lsp.on-attach"),
		capabilities = overriddenCapabilities[server_name] or basicCapabilities
	}

	if require_ok then
		opts = vim.tbl_deep_extend("force", conf_opts, opts)
	end

	require("lspconfig")[server_name].setup(opts)
end
