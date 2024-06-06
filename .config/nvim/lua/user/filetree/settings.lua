local function on_attach(bufnr)
	require("user.keymaps.nvim-tree-keymaps").setTreeKeys(bufnr)
end

return {
	hijack_cursor = true,
	auto_reload_on_write = true,
	disable_netrw = true,
	hijack_netrw = true,
	hijack_unnamed_buffer_when_opening = false,
	root_dirs = {},
	prefer_startup_root = false,
	sync_root_with_cwd = false,
	reload_on_bufenter = false,
	respect_buf_cwd = false,
	select_prompts = true,

	sort = {
		sorter = "name",
		folders_first = true,
		files_first = false,
	},

	update_cwd = false,
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
		cmd = "",
		args = {},
	},
	filters = {
        enable = true,
		dotfiles = true,
        git_ignored = true,
        git_clean = false,
        no_buffer = false,
        no_bookmark = false,
		custom = { "node_modules" },
		exclude = {},
	},
	actions = {
		change_dir = {
			enable = true,
			global = true,
		},
		open_file = {
            eject = true,
			quit_on_open = true,
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
}
