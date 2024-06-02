local M = {}
M.setup = function()
	local actions = require("telescope.actions")
	require("telescope").setup({
		defaults = {
			prompt_prefix = " ",
			selection_caret = " ",
			path_display = { "smart" },

			mappings = require("user.keymaps.telescope-action-keymaps")(actions),
            pickers = {
                find_files = {
                  hidden = true
                },
                grep_string = {
                  additional_args = {"--hidden"}
                },
                live_grep = {
                  additional_args = {"--hidden"}
                },
            },
		extensions = { "diagnostics" },
	}})
end
return M
