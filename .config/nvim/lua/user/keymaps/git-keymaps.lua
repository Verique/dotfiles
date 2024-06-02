M = {}

M.setupKeys = function()
	local wk = require("user.keymaps.helpers")
	wk.addGroup("<Leader>g", "Git")
	wk.addWkKey("n", "<Leader>gj", "Next Hunk", "<cmd>Gitsigns next_hunk<cr>")
	wk.addWkKey("n", "<Leader>gk", "Prev Hunk", "<cmd>Gitsigns prev_hunk<cr>")
	wk.addWkKey("n", "<Leader>gl", "Blame Line", "<cmd>Gitsigns blame_line<cr>")
	wk.addWkKey("n", "<Leader>gp", "Prewiew Hunk", "<cmd>Gitsigns preview_hunk<cr>")
	wk.addWkKey("n", "<Leader>gr", "Reset Hunk", "<cmd>Gitsigns reset_hunk<cr>")
	wk.addWkKey("n", "<Leader>gR", "Reset Buffer", "<cmd>Gitsigns reset_buffer<cr>")
	wk.addWkKey("n", "<Leader>gs", "Stage Hunk", "<cmd>Gitsigns stage_hunk<cr>")
	wk.addWkKey("n", "<Leader>gu", "Unstage Hunk", "<cmd>Gitsigns undo_stage_hunk<cr>")
	wk.addWkKey("n", "<Leader>gd", "Diff Buffer", "<cmd>Gitsigns diffthis HEAD<cr>")
	wk.addWkKey("n", "<Leader>go", "Diff View Open", "<cmd>DiffviewOpen<cr>")
	wk.addWkKey("n", "<Leader>gc", "Diff View Close", "<cmd>DiffviewClose<cr>")
	wk.addWkKey("n", "<Leader>gh", "File History", "<cmd>DiffviewFileHistory %<cr>")
end
return M
