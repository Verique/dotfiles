return {
	ensure_installed = {
		"c_sharp",
		"json",
		"lua",
		"typescript",
		"javascript",
		"tsx",
		"c",
		"markdown",
		"markdown_inline",
	},
	sync_install = false,
	auto_install = true,
	ignore_install = { "" }, -- List of parsers to ignore installing
	highlight = {
		enable = true, -- false will disable the whole extension
		disable = { "" }, -- list of language that will be disabled
		additional_vim_regex_highlighting = false,
	},
	indent = { enable = true, disable = { "yaml" } },
	autopairs = {
		enabled = true,
	},
	autotag = {
		enable = false,
	},
	context_commentstring = {
		enabled = true,
		enable_autocmd = false,
	},
}
