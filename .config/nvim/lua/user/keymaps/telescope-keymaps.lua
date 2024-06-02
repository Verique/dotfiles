local M = {}

M.setupKeys = function()
	local wk = require("user.keymaps.helpers")
	wk.addGroup("<Leader>f", "Find")
	wk.addWkKey("n", "<Leader>ff", "Find Files", "<cmd>Telescope find_files<cr>")
	wk.addWkKey("n", "<Leader>fg", "Grep Files", "<cmd>Telescope live_grep<cr>")
	wk.addWkKey("n", "<Leader>fh", "Find Help Tags", "<cmd>Telescope help_tags<cr>")
	wk.addWkKey("n", "<Leader>fm", "Find Manual", "<cmd>Telescope man_pages<cr>")
	wk.addWkKey("n", "<Leader>fr", "Find Registers", "<cmd>Telescope registers<cr>")
	wk.addWkKey("n", "<Leader>fk", "Find keymaps", "<cmd>Telescope keymaps<cr>")
	wk.addWkKey("n", "<Leader>fC", "Find Commands", "<cmd>Telescope commands<cr>")
	wk.addWkKey("n", "<Leader>fo", "Git Status", "<cmd>Telescope git_status<cr>")
	wk.addWkKey("n", "<Leader>fc", "Find Git Commits", "<cmd>Telescope git_commits<cr>")
	wk.addWkKey("n", "<Leader>fb", "Find Git Branches", "<cmd>Telescope git_branches<cr>")
	wk.addWkKey("n", "<Leader>fd", "Find Diagnostics in Buffer", "<cmd>Telescope diagnostics bufnr=0<cr>")
	wk.addWkKey("n", "<Leader>fD", "Find Warnings", "<cmd>Telescope diagnostics severity_limit='warn'<cr>")
	wk.addWkKey("n", "<Leader>fs", "Find Document Symbols", "<cmd>Telescope lsp_document_symbols<cr>")
	wk.addWkKey("n", "<Leader>fS", "Find Workspace_Symbols", "<cmd>Telescope lsp_dynamic_workspace_symbols<cr>")
	wk.addWkKey("n", "<Leader>ft", "Find Opened Files", "<cmd>Telescope buffers<cr>")
end

return M
