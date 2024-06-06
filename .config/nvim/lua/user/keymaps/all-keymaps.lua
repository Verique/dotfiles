local M = {}

local allKeymaps = {
    require("user.keymaps.basic-keymaps"),
    require("user.keymaps.telescope-keymaps")
}

M.setup = function()
	for _, value in pairs(allKeymaps) do
	   value.setupKeys()
	end
end

return M
