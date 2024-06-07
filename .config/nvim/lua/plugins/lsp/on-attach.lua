local onAttach = function(client, bufnr)
	require("plugins.keymaps.lsp-keymaps").on_attach_keymaps(client, bufnr)
	require("illuminate").on_attach(client)
end

local wrapForAttach = function(func)
	return function(args)
		if not (args.data and args.data.client_id) then
			return
		end
		local bufnr = args.buf
		local client = vim.lsp.get_client_by_id(args.data.client_id)
		func(client, bufnr)
	end
end

local setup = function()
	vim.api.nvim_create_autocmd("LspAttach", { callback = wrapForAttach(onAttach) })
end

return { setup = setup }
