local icons = require("user.common.icons").lualine
local M = {}

M.setup = function()
	local lsp_status = {
		"lsp_progress",
		separators = icons.separators,
		display_components = { "lsp_client_name", { "title" } },
	}

	local diagnostics = {
		"diagnostics",
		sections = { "error", "warn" },
		symbols = icons.diagnostics,
		colored = false,
	}

	require("lualine").setup({
		options = {
			icons_enabled = true,
			theme = "auto",
			component_separators = icons.component_separators,
			section_separators = icons.section_separators,
			disabled_filetypes = {},
			always_divide_middle = true,
		},
		sections = {
			lualine_a = { "mode" },
			lualine_b = { "branch", diagnostics },
			lualine_c = { lsp_status },
			lualine_x = { "encoding", "filetype" },
			lualine_y = { "fileformat" },
			lualine_z = { "location" },
		},
		inactive_sections = {
			lualine_a = {},
			lualine_b = {},
			lualine_c = { "filename" },
			lualine_x = { "location" },
			lualine_y = {},
			lualine_z = {},
		},
		tabline = {},
		extensions = { "nvim-tree" },
	})
end
return M
