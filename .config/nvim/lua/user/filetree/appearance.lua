local diagnosticIcons = {
	hint = "",
	info = "",
	warning = "",
	error = "",
}
local treeIcons = {
	default = "",
	symlink = "",
	git = {
		unstaged = "",
		staged = "S",
		unmerged = "",
		renamed = "➜",
		deleted = "",
		untracked = "U",
		ignored = "◌",
	},
	folder = {
		default = "",
		open = "",
		empty = "",
		empty_open = "",
		symlink = "",
	},
}

local indentIcons = {
	corner = "└",
	edge = "│",
	item = "│",
	bottom = "─",
	none = " ",
}

return {
	renderer = {
		add_trailing = true,
		group_empty = true,
		full_name = false,
		root_folder_label = false,
		indent_width = 1,
		special_files = {},
		symlink_destination = true,
		highlight_git = "none",
		highlight_diagnostics = "none",
		highlight_opened_files = "none",
		highlight_modified = "none",
		highlight_bookmarks = "none",
		highlight_clipboard = "name",

		indent_markers = { enable = true, icons = indentIcons },

		icons = {
			glyphs = treeIcons,
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
	},

	view = {
		centralize_selection = false,
		cursorline = true,
		debounce_delay = 20,
		side = "left",
		preserve_window_proportions = true,
		number = false,
		relativenumber = false,
		signcolumn = "yes",
		width = 30,

		float = {
			enable = false, -- :h nvim-tree.view.float
		},
	},

	git = {
		enable = true,
		show_on_dirs = true,
		show_on_open_dirs = true,
		disable_for_dirs = {},
		timeout = 400,
		cygwin_support = false,
	},

	diagnostics = {
		enable = true,
		show_on_dirs = true,
		show_on_open_dirs = false,
		debounce_delay = 50,
		icons = diagnosticIcons,
	},

	modified = {
		enable = false,
		show_on_dirs = true,
		show_on_open_dirs = true,
	},
}
