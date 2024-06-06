local opts = { noremap = true, silent = true }
local keys = require("common.keymap-helpers")

local setup = function()
	-- Leader key
	keys.add("", "<Space>", nil, "<Nop>", opts)
	keys.add("", "K", nil, "<Nop>", opts)

	vim.g.maplocalleader = " "
	vim.g.mapleader = " "

	-- Insert --
	keys.add("i", "jj", nil, "<ESC>", opts) -- Press jj fast to enter

	-- Move text up and down
	keys.add("v", ">", nil, ">gv", opts)
	keys.add("v", "<", nil, "<gv", opts)
	keys.add("n", "<A-k>", nil, ":m .-2<CR>==", opts)
	keys.add("n", "<A-j>", nil, ":m .+1<CR>==", opts)
	-- Visual Block --
	-- Move text up and down
	keys.add("x", "<A-k>", nil, "<esc>gv<cmd>'<,'>m '<-2<CR>gv=gv", opts)
	keys.add("x", "<A-j>", nil, "<esc>gv<cmd>'<,'>m '>+1<CR>gv=gv", opts)
	-- Dont change buffer when pasting in visual mode
	keys.add("v", "p", nil, '"_dP', opts)

	keys.addGroup("<Leader>", "command", { "n", "v" })
	keys.add(
		"n",
		"gx",
		"Open link in browser",
		[[:silent execute '!$BROWSER ' . shellescape(expand('<cfile>'), 1)<CR>]],
		opts
	)
	keys.add("n", "<Leader>w", "Write All", "<cmd>wa!<cr>")
	keys.add("n", "<Leader>q", "Write All and Quit", "<cmd>wqa!<cr>")
	keys.add("n", "<Leader>h", "Search Highlight Toggle", "<cmd>noh<cr>")
end

return { setup = setup }
