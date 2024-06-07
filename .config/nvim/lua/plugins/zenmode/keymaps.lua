local setup = function()
	require("common.keymap-helpers").add("n", "<Leader>z", "Zen Mode", "<cmd>ZenMode<cr>")
end

return { setup = setup }
