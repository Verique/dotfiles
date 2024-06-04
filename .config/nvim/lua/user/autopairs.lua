--[[ local status_ok, wk = pcall(require, "nvim-autopairs") ]]
--[[ if not status_ok then ]]
--[[   vim.notify("[CONFIG] no autopairs found"); ]]
--[[   return ]]
--[[ end ]]

local M = {}
M.setup = function()
	require("nvim-autopairs").setup({
		check_ts = true,
		ts_config = {
			lua = { "string", "source" },
			javascript = { "string", "template_string" },
			java = false,
		},
		disable_filetype = { "TelescopePrompt", "spectre_panel" },
		enable_moveright = false,
	})
	local cmp_autopairs = require("nvim-autopairs.completion.cmp")
	local cmp_status_ok, cmp = pcall(require, "cmp")
	if cmp_status_ok then
		cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
	end
end
return M