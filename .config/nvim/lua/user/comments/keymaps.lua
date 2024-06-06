local pluginKeymaps = {
	toggler = { line = "<Leader>cl", block = "<Leader>cb" },
	opleader = { line = "<Leader>cc", block = "<Leader>cC" },
	extra = { above = "<Leader>ck", below = "<Leader>cj", eol = "<Leader>ca" },
	mappings = { basic = true, extra = true, extended = false },
}

local setup = function()
	local wk = require("user.keymaps.helpers")
	wk.addGroup("<Leader>c", "Comment", { "n", "v" })

	wk.addWkKey("n", pluginKeymaps.extra.eol, "Comment at end")
	wk.addWkKey("n", pluginKeymaps.extra.below, "Comment below")
	wk.addWkKey("n", pluginKeymaps.extra.above, "Comment above")
	wk.addWkKey("n", pluginKeymaps.toggler.line, "Comment line")
	wk.addWkKey("n", pluginKeymaps.toggler.block, "Comment block")
	wk.addWkKey({ "n", "v" }, pluginKeymaps.opleader.line, "Comment as individual lines")
	wk.addWkKey({ "n", "v" }, pluginKeymaps.opleader.block, "Comment as block")
end

return { setup = setup, pluginKeymaps = pluginKeymaps }
