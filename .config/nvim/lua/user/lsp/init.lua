local M = {}

M.setup = function()
    require("user.lsp.mason")
    require("user.lsp.handlers").setup()
    require("user.lsp.null-ls")
end

return M
