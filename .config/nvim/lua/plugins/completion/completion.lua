local duplicates = {
	path = 1,
	nvim_lsp = 0,
	luasnip = 1,
}
local duplicates_default = 0

local check_backspace = function()
	local col = vim.fn.col(".") - 1
	return col == 0 or vim.fn.getline("."):sub(col, col):match("%s")
end

local icons = require("plugins.completion.appearance")
local M = {}
M.setup = function()
	local luasnip = require("luasnip")
	local cmp = require("cmp")
	require("luasnip.loaders.from_vscode").lazy_load({ paths = { "./snippets/unity" }, include = { "csharp" } })
	cmp.setup.filetype("gitcommit", {
		sources = cmp.config.sources({
			{ name = "cmp_git" }, -- You can specify the `cmp_git` source if you were installed it.
		}, {
			{ name = "buffer" },
		}),
	})

	-- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
	cmp.setup.cmdline("/", {
		mapping = cmp.mapping.preset.cmdline(),
		sources = {
			{ name = "buffer" },
		},
	})

	cmp.setup.cmdline(":", {
		mapping = cmp.mapping.preset.cmdline(),
		sources = cmp.config.sources({
			{ name = "path" },
		}, {
			{ name = "cmdline" },
		}),
	})
	-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).

	local select_opts = { behavior = cmp.SelectBehavior.Select }
	local mapping = {
		["<C-k>"] = cmp.mapping.select_prev_item(select_opts),
		["<C-j>"] = cmp.mapping.select_next_item(select_opts),
		["<C-p>"] = cmp.mapping.select_prev_item(select_opts),
		["<C-n>"] = cmp.mapping.select_next_item(select_opts),
		["<C-b>"] = cmp.mapping.scroll_docs(-1),
		["<C-f>"] = cmp.mapping.scroll_docs(1),
		["<C-Space>"] = cmp.mapping.complete({ select = true }),
		["jk"] = cmp.mapping({ i = cmp.mapping.abort(), c = cmp.mapping.close() }),
		["<CR>"] = cmp.mapping.confirm({ select = true }),
		["<Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_next_item(select_opts)
			elseif luasnip.expandable() then
				luasnip.expand()
			elseif luasnip.expand_or_jumpable() then
				luasnip.expand_or_jump()
			elseif check_backspace() then
				fallback()
			else
				fallback()
			end
		end, { "i", "s" }),
		["<S-Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_prev_item(select_opts)
			elseif luasnip.jumpable(-1) then
				luasnip.jump(-1)
			else
				fallback()
			end
		end, { "i", "s" }),
	}
	require("cmp").setup({
		snippet = {
			expand = function(args)
				luasnip.lsp_expand(args.body)
			end,
		},
		experimental = {
			ghost_text = false,
		},
		mapping = mapping,
		formatting = {
			fields = { "kind", "abbr", "menu" },
			format = function(entry, vim_item)
				local max_width = 0
				if max_width ~= 0 and #vim_item.abbr > max_width then
					vim_item.abbr = string.sub(vim_item.abbr, 1, max_width - 1) .. icons.ui.Ellipsis
				end
				vim_item.kind = icons.kind[vim_item.kind]
				vim_item.menu = icons.cmp_sources[entry.source.name]
				vim_item.dup = duplicates[entry.source.name] or duplicates_default
				return vim_item
			end,
		},
		buffer = 1,
		sources = cmp.config.sources({
			{ name = "nvim_lsp" },
			{ name = "nvim_lua" },
			{ name = "luasnip" },
			{ name = "buffer" },
			{ name = "path" },
		}),
	})
end
return M
