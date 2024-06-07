local keys = require("common.keymap-helpers")

local setup = function()
	keys.addGroup("<Leader>f", "Find")
	keys.add("n", "<Leader>ff", "Find Files", "<cmd>Telescope find_files<cr>")
	keys.add("n", "<Leader>fg", "Grep Files", "<cmd>Telescope live_grep<cr>")
	keys.add("n", "<Leader>fh", "Find Help Tags", "<cmd>Telescope help_tags<cr>")
	keys.add("n", "<Leader>fm", "Find Manual", "<cmd>Telescope man_pages<cr>")
	keys.add("n", "<Leader>fr", "Find Registers", "<cmd>Telescope registers<cr>")
	keys.add("n", "<Leader>fk", "Find keymaps", "<cmd>Telescope keymaps<cr>")
	keys.add("n", "<Leader>fC", "Find Commands", "<cmd>Telescope commands<cr>")
	keys.add("n", "<Leader>fo", "Git Status", "<cmd>Telescope git_status<cr>")
	keys.add("n", "<Leader>fc", "Find Git Commits", "<cmd>Telescope git_commits<cr>")
	keys.add("n", "<Leader>fb", "Find Git Branches", "<cmd>Telescope git_branches<cr>")
	keys.add("n", "<Leader>fd", "Find Diagnostics in Buffer", "<cmd>Telescope diagnostics bufnr=0<cr>")
	keys.add("n", "<Leader>fD", "Find Warnings", "<cmd>Telescope diagnostics severity_limit='warn'<cr>")
	keys.add("n", "<Leader>fs", "Find Document Symbols", "<cmd>Telescope lsp_document_symbols<cr>")
	keys.add("n", "<Leader>fS", "Find Workspace_Symbols", "<cmd>Telescope lsp_dynamic_workspace_symbols<cr>")
	keys.add("n", "<Leader>ft", "Find Opened Files", "<cmd>Telescope buffers<cr>")
end

local getActionKeymaps = function(actions)
	return {
		defaults = {
			mappings = {
				i = {
					["<C-n>"] = actions.cycle_history_next,
					["<C-p>"] = actions.cycle_history_prev,
					["<C-j>"] = actions.move_selection_next,
					["<C-k>"] = actions.move_selection_previous,
					["jk"] = actions.close,
					["<Down>"] = actions.move_selection_next,
					["<Up>"] = actions.move_selection_previous,
					["<CR>"] = actions.select_default,
					["<C-x>"] = actions.select_horizontal,
					["<C-v>"] = actions.select_vertical,
					["<C-t>"] = actions.select_tab,
					["<C-u>"] = actions.preview_scrolling_up,
					["<C-d>"] = actions.preview_scrolling_down,
					["<PageUp>"] = actions.results_scrolling_up,
					["<PageDown>"] = actions.results_scrolling_down,
					["<Tab>"] = actions.toggle_selection + actions.move_selection_worse,
					["<S-Tab>"] = actions.toggle_selection + actions.move_selection_better,
					["<C-q>"] = actions.send_to_qflist + actions.open_qflist,
					["<M-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
					["<C-l>"] = actions.complete_tag,
					["<C-_>"] = actions.which_key, -- keys from pressing <C-/>
				},

				n = {
					["<Backspace>"] = actions.close,
					["<Esc>"] = actions.close,
					["<CR>"] = actions.select_default,
					["<C-x>"] = actions.select_horizontal,
					["<C-v>"] = actions.select_vertical,
					["<C-t>"] = actions.select_tab,
					["<Tab>"] = actions.toggle_selection + actions.move_selection_worse,
					["<S-Tab>"] = actions.toggle_selection + actions.move_selection_better,
					["<C-q>"] = actions.send_to_qflist + actions.open_qflist,
					["<M-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
					["J"] = actions.move_selection_next,
					["K"] = actions.move_selection_previous,
					["H"] = actions.move_to_top,
					["M"] = actions.move_to_middle,
					["L"] = actions.move_to_bottom,
					["<Down>"] = actions.move_selection_next,
					["<Up>"] = actions.move_selection_previous,
					["gg"] = actions.move_to_top,
					["G"] = actions.move_to_bottom,
					["<C-u>"] = actions.preview_scrolling_up,
					["<C-d>"] = actions.preview_scrolling_down,
					["<PageUp>"] = actions.results_scrolling_up,
					["<PageDown>"] = actions.results_scrolling_down,
					["?"] = actions.which_key,
				},
			},
		},
	}
end

return { getActionKeymaps = getActionKeymaps, setup = setup }
