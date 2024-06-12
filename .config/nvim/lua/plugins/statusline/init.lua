local rootDir = ... .. "."

return {
	"nvim-lualine/lualine.nvim",
    opts = require(rootDir .. "appearance"),
	dependencies = { "arkav/lualine-lsp-progress" },
}
