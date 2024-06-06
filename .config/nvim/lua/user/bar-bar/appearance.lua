local icons = {
	buffer_index = false,
	buffer_number = false,
	button = false,
	diagnostics = { enabled = false },
	gitsigns = { enabled = false },
	filename = true,
	filetype = { enabled = false, custom_colors = false },
	separator = { left = "▎", right = "" },
	modified = { button = "" },
	pinned = { filename = true, button = "" },
	alternate = {},
	current = {},
	inactive = {},
	visible = {},
}

return {
	animation = false,
	hide = {
		alternate = false,
		current = false,
		extensions = false,
		inactive = false,
		visible = false,
	},
	highlight_alternate = false,
	highlight_inactive_file_icons = false,
	highlight_visible = true,
	maximum_padding = 1,
	maximum_length = 30,
	minimum_length = 0,
	minimum_padding = 1,
	sidebar_filetypes = { NvimTree = true },
	icons = icons,
}
