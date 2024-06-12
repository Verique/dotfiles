local keyset = vim.keymap.set

local addKeyInternal = function(mode, cmd, name, mapping, opts)
	keyset(mode, cmd, mapping, vim.tbl_extend("force", opts or {}, { desc = name or "" }))
end

local addKey = function(mode, cmd, name, mapping, opts)
	opts = opts or {}

	addKeyInternal(
		mode,
		cmd,
		name,
		mapping,
		{ buffer = opts.bufnr, noremap = opts.noremap or true, silent = opts.silent or false }
	)
end

local addGroup = function(keymap, name, mode)
	keyset(mode or "n", keymap, "<Nop>", { desc = name or "" })
end

return { addGroup = addGroup, add = addKey }
