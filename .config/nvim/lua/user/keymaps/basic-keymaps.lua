local opts = { noremap = true, silent = true }
local keymap = vim.keymap.set
local M = {}

M.setupKeys = function()
	-- Leader key
	keymap("", " ", "<Nop>", opts)
	keymap("", "K", "<Nop>", opts)
	vim.g.maplocalleader = " "
	vim.g.mapleader = " "

	-- Insert --
	keymap("i", "jj", "<ESC>", opts) -- Press jj fast to enter

	-- Move text up and down
	keymap("v", ">", ">gv", opts)
	keymap("v", "<", "<gv", opts)
	keymap("n", "<A-k>", ":m .-2<CR>==", opts)
	keymap("n", "<A-j>", ":m .+1<CR>==", opts)
	-- Visual Block --
	-- Move text up and down
	keymap("x", "<A-k>", "<esc>gv<cmd>'<,'>m '<-2<CR>gv=gv", opts)
	keymap("x", "<A-j>", "<esc>gv<cmd>'<,'>m '>+1<CR>gv=gv", opts)
	-- Dont change buffer when pasting in visual mode
	keymap("v", "p", '"_dP', opts)

	-- Better window navigation
	--[[ keymap("n", "<C-h>", "<C-w>h", opts) ]]
	--[[ keymap("n", "<C-j>", "<C-w>j", opts) ]]
	--[[ keymap("n", "<C-k>", "<C-w>k", opts) ]]
	--[[ keymap("n", "<C-l>", "<C-w>l", opts) ]]

    -- Kitty navigation
 --[[    vim.g.kitty_navigator_no_mappings = 1 ]]
	--[[ keymap("n", "<C-h>", "<cmd>KittyNavigateLeft<CR>", opts) ]]
	--[[ keymap("n", "<C-l>", "<cmd>KittyNavigateRight<CR>", opts) ]]
	--[[ keymap("n", "<C-j>", "<cmd>KittyNavigateDown<CR>", opts) ]]
	--[[ keymap("n", "<C-k>", "<cmd>KittyNavigateUp<CR>", opts) ]]

	local wk = require("user.keymaps.helpers")
    wk.addGroup("<Leader>", "command", {"n", "v"})
	wk.addWkKey(
		"n",
		"gx",
		"Open link in browser",
		[[:silent execute '!$BROWSER ' . shellescape(expand('<cfile>'), 1)<CR>]],
		opts
	)
	wk.addWkKey("n", "<Leader>w", "Write All", "<cmd>wa!<cr>")
	wk.addWkKey("n", "<Leader>q", "Write All and Quit", "<cmd>wqa!<cr>")
	wk.addWkKey("n", "<Leader>h", "Search Highlight Toggle", "<cmd>noh<cr>")
end
return M
