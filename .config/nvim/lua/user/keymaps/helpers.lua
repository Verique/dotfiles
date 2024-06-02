local M = {}
local wk = require("which-key")

local function addKeyInternal(keymap, mapping, opts)
	wk.register({ [keymap] = mapping }, opts)
end

M.addWkKey = function(mode, keymap, name, cmd, opts)
	opts = opts or {}
	local mapping = {}
	if cmd ~= nil then
		mapping = { cmd, name }
	else
		mapping = { name }
	end

	addKeyInternal(
		keymap,
		mapping,
		{ buffer = opts.bufnr, mode = mode, noremap = opts.noremap or true, silent = opts.silent or false }
	)
end

M.addGroup = function(keymap, name, mode)
	wk.register({ [keymap] = { name = name } }, {mode = mode or "n"})
end

return M
