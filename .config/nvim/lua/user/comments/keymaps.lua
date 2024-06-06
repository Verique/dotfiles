local pluginKeymaps = {
	toggler = { line = "<Leader>cl", block = "<Leader>cb" },
	opleader = { line = "<Leader>cc", block = "<Leader>cC" },
	extra = { above = "<Leader>ck", below = "<Leader>cj", eol = "<Leader>ca" },
	mappings = { basic = true, extra = true, extended = false },
}

local setup = function()
	require("common.keymap-helpers").addGroup("<Leader>c", "Comment", { "n", "v" })
end

return { setup = setup, pluginKeymaps = pluginKeymaps }
