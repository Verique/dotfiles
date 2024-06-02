local M = {}
M.setup = function()
	local colorscheme = "everforest"
	vim.g.everforest_background = "medium"
	vim.g.everforest_better_performance = 1
	vim.cmd.colorscheme(colorscheme)
end
return M
