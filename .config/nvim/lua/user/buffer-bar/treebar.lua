vim.cmd "au FileType NvimTree lua require('user.buffer-bar.treebar').on_type()"
M={}
--
M.on_type = function()
  local buf = vim.fn.expand "<abuf>"
  vim.cmd("au BufWinEnter <buffer=" .. buf .. "> lua require('user.buffer-bar.treebar').on_open()")
  vim.cmd("au WinClosed   <buffer=" .. buf .. "> lua require('user.buffer-bar.treebar').on_close()")
end
--
M.on_open = function()
    require("bufferline.api").set_offset(31, 'File Explorer')
end
--
M.on_close = function()
    require("bufferline.api").set_offset(0)
end
return M
