local function on_attach(bufnr)
	local api = require("nvim-tree.api")
	require("user.keymaps.nvim-tree-keymaps").setPluginKeys(api, bufnr)
end

local M = {}
M.setup = function()
    vim.api.nvim_set_hl(0, "NvimTreeDiagnosticHintIcon", { link = "DiagnosticSignHint" })
    vim.api.nvim_set_hl(0, "NvimTreeDiagnosticErrorIcon", { link = "DiagnosticSignError"})
    vim.api.nvim_set_hl(0, "NvimTreeDiagnosticWarnIcon", { link = "DiagnosticSignWarn" })
    vim.api.nvim_set_hl(0, "NvimTreeDiagnosticInfoIcon", { link = "DiagnosticSignInfo" })
    vim.api.nvim_set_hl(0, "NvimTreeDiagnosticHintFileHL", { link = "DiagnosticSignHint" })
    vim.api.nvim_set_hl(0, "NvimTreeDiagnosticErrorFileHL", { link = "DiagnosticSignError"})
    vim.api.nvim_set_hl(0, "NvimTreeDiagnosticWarnFileHL", { link = "DiagnosticSignWarn" })
    vim.api.nvim_set_hl(0, "NvimTreeDiagnosticInfoFileHL", { link = "DiagnosticSignInfo" })
    vim.api.nvim_set_hl(0, "NvimTreeDiagnosticHintFolderHL", { link = "DiagnosticSignHint" })
    vim.api.nvim_set_hl(0, "NvimTreeDiagnosticErrorFolderHL", { link = "DiagnosticSignError"})
    vim.api.nvim_set_hl(0, "NvimTreeDiagnosticWarnFolderHL", { link = "DiagnosticSignWarn" })
    vim.api.nvim_set_hl(0, "NvimTreeDiagnosticInfoFolderHL", { link = "DiagnosticSignInfo" })
	require("nvim-tree").setup({
		renderer = {
			icons = {
				glyphs = require("user.common.icons").nvim_tree,
				show = {
					file = true,
					folder = true,
					folder_arrow = false,
					git = true,
					modified = false,
					diagnostics = true,
					bookmarks = false,
				},
				padding = " ",
				git_placement = "before",
				modified_placement = "before",
				diagnostics_placement = "signcolumn",
			},
			group_empty = true,
			root_folder_label = false,
            add_trailing = true,
            highlight_diagnostics = "none",
            highlight_git = "none",
            indent_markers = {enable = true}
		},
		auto_reload_on_write = true,
		disable_netrw = true,
		hijack_cursor = true,
		hijack_netrw = true,
		hijack_unnamed_buffer_when_opening = false,
		sort_by = "name",
		update_cwd = false,
		view = {
			width = 30,
			side = "left",
			preserve_window_proportions = true,
			number = false,
			relativenumber = false,
			signcolumn = "yes",
		},
		on_attach = on_attach,
		hijack_directories = {
			enable = true,
			auto_open = false,
		},
		update_focused_file = {
			enable = false,
			update_cwd = false,
			ignore_list = {},
		},
		system_open = {
			cmd = nil,
			args = {},
		},
		diagnostics = {
			enable = true,
			show_on_dirs = true,
			show_on_open_dirs = false,
			debounce_delay = 50,
			icons = require("user.common.icons").nvim_tree_diagnostics,
		},
		filters = {
			dotfiles = true,
			custom = { "node_modules" },
			exclude = {},
		},
		git = {
			enable = true,
			show_on_dirs = true,
			show_on_open_dirs = true,
			disable_for_dirs = {},
			timeout = 400,
			cygwin_support = false,
		},
		modified = {
			enable = false,
			show_on_dirs = true,
			show_on_open_dirs = true,
		},
		actions = {
			change_dir = {
				enable = true,
				global = true,
			},
			open_file = {
				quit_on_open = false,
				resize_window = true,
				window_picker = {
					enable = true,
					chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",
					exclude = {
						filetype = { "notify", "packer", "qf", "diff", "fugitive", "fugitiveblame" },
						buftype = { "nofile", "terminal", "help" },
					},
				},
			},
		},
		trash = {
			cmd = "trash",
			require_confirm = true,
		},
		log = {
			enable = false,
			truncate = false,
			types = {
				all = false,
				config = false,
				copy_paste = false,
				git = false,
				profile = false,
			},
		},
	})
end
return M
