-- autocmd! remove all autocommands, if entered under a group it will clear that group
vim.cmd([[
  augroup _general_settings
    autocmd!
    autocmd FileType qf,help,man,lspinfo nnoremap <silent> <buffer> q :close<CR> 
    autocmd TextYankPost * silent!lua require('vim.highlight').on_yank({higroup = 'Search', timeout = 200}) 
    autocmd BufWinEnter * :set formatoptions-=cro
    autocmd FileType qf set nobuflisted
    autocmd Filetype javascript,javascriptreact,javascript.jsx,typescript,typescriptreact,typescript.tsxsetlocal,xml set tabstop=2
    autocmd Filetype javascript,javascriptreact,javascript.jsx,typescript,typescriptreact,typescript.tsxsetlocal,xml set shiftwidth=2
  augroup end
  augroup _git
    autocmd!
    autocmd FileType gitcommit setlocal wrap
    autocmd FileType gitcommit setlocal spell
  augroup end
  augroup _markdown
    autocmd!
    autocmd FileType markdown setlocal wrap
    autocmd FileType markdown setlocal spell
  augroup end
  augroup _auto_resize
    autocmd!
    autocmd VimResized * tabdo wincmd = 
  augroup end
]])
