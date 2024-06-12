local keys = require("common.keymap-helpers")

local setup = function()
    keys.addGroup("<Leader>g", "Git")
    keys.add("n", "<Leader>gj", "Next Hunk", "<cmd>Gitsigns next_hunk<cr>")
    keys.add("n", "<Leader>gk", "Prev Hunk", "<cmd>Gitsigns prev_hunk<cr>")
    keys.add("n", "<Leader>gl", "Blame Line", "<cmd>Gitsigns blame_line<cr>")
    keys.add("n", "<Leader>gp", "Prewiew Hunk", "<cmd>Gitsigns preview_hunk<cr>")
    keys.add("n", "<Leader>gr", "Reset Hunk", "<cmd>Gitsigns reset_hunk<cr>")
    keys.add("n", "<Leader>gR", "Reset Buffer", "<cmd>Gitsigns reset_buffer<cr>")
    keys.add("n", "<Leader>gs", "Stage Hunk", "<cmd>Gitsigns stage_hunk<cr>")
    keys.add("n", "<Leader>gu", "Unstage Hunk", "<cmd>Gitsigns undo_stage_hunk<cr>")
    keys.add("n", "<Leader>gd", "Diff Buffer", "<cmd>Gitsigns diffthis HEAD<cr>")
    keys.add("n", "<Leader>go", "Diff View Open", "<cmd>DiffviewOpen<cr>")
    keys.add("n", "<Leader>gc", "Diff View Close", "<cmd>DiffviewClose<cr>")
    keys.add("n", "<Leader>gh", "File History", "<cmd>DiffviewFileHistory %<cr>")
    -- TODO: Add merge hotkeys? maybe after lazy git?
end

return { setup = setup }
