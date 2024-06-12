local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

local setup = function()
	map("n", "<S-h>", ":BufferPrevious<CR>", opts)
	map("n", "<S-l>", ":BufferNext<CR>", opts)
	map("n", "<A-,>", ":BufferMovePrevious<CR>", opts)
	map("n", "<A-.>", ":BufferMoveNext<CR>", opts)
	map("n", "<A-1>", ":BufferGoto 1<CR>", opts)
	map("n", "<A-2>", ":BufferGoto 2<CR>", opts)
	map("n", "<A-3>", ":BufferGoto 3<CR>", opts)
	map("n", "<A-4>", ":BufferGoto 4<CR>", opts)
	map("n", "<A-5>", ":BufferGoto 5<CR>", opts)
	map("n", "<A-6>", ":BufferGoto 6<CR>", opts)
	map("n", "<A-7>", ":BufferGoto 7<CR>", opts)
	map("n", "<A-8>", ":BufferGoto 8<CR>", opts)
	map("n", "<A-9>", ":BufferGoto 9<CR>", opts)
	map("n", "<A-0>", ":BufferLast<CR>", opts)
	map("n", "<A-c>", ":BufferClose<CR>", opts)
	map("n", "<A-o>", ":BufferCloseAllButCurrent<CR>", opts)
	map("n", "<A-p>", ":BufferPick<CR>", opts)
	map("n", "<A-s>", ":BufferPin<CR>", opts)
end
return { setup = setup }
