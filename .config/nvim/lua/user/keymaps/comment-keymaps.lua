local M = {}

M.pluginKeymaps = {
	toggler = {
		line = "<Leader>cl", -- -Line-comment toggle keymap
		block = "<Leader>cb", -- -Block-comment toggle keymap
	},
	opleader = {
		line = "<Leader>cc", ---Line-comment keymap
		block = "<Leader>cC", ---Block-comment keymap
	},
	extra = {
		above = "<Leader>ck", ---Add comment on the line above
		below = "<Leader>cj", ---Add comment on the line below
		eol = "<Leader>ca", ---Add comment at the end of line
	},
	mappings = {
		basic = true, ---Operator-pending mapping -Includes toggler and opleader
		extra = true, ---Extra mapping -Includes extra
		extended = false, ---Extended mapping -Includes `g>`, `g<`, `g>[count]{motion}` and `g<[count]{motion}`
	},
}

M.setupKeys = function()
	local wk = require("user.keymaps.helpers")
	wk.addGroup("<Leader>c", "Comment", {"n", "v"})

	wk.addWkKey("n", M.pluginKeymaps.extra.eol, "Comment at end")
	wk.addWkKey("n", M.pluginKeymaps.extra.below, "Comment below")
	wk.addWkKey("n", M.pluginKeymaps.extra.above, "Comment above")
	wk.addWkKey("n", M.pluginKeymaps.toggler.line, "Comment line")
	wk.addWkKey("n", M.pluginKeymaps.toggler.block, "Comment block")
	wk.addWkKey({"n", "v"}, M.pluginKeymaps.opleader.line, "Comment as individual lines")
	wk.addWkKey({"n", "v"}, M.pluginKeymaps.opleader.block, "Comment as block")
end
return M
