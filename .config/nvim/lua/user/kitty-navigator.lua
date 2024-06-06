return {
	"knubie/vim-kitty-navigator",
	build = {
		"cp get_layout.py ~/.config/kitty",
		"cp pass_keys.py ~/.config/kitty",
	},
	init = function()
		vim.g.kitty_navigator_enable_stack_layout = 1
	end,
}
