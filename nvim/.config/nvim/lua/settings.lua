local cmd = vim.cmd
local exec = vim.api.nvim_exec
local fn = vim.fn
local g = vim.g
local opt = vim.opt

g.mapleader = ','
opt.swapfile = false

opt.showmatch = true
opt.splitright = true
opt.splitbelow = true
opt.ignorecase = true
opt.smartcase = true
opt.autoindent = true

-- Colorscheme
opt.termguicolors = true
vim.o.background = "light"
cmd [[colorscheme solarized-high]]

exec([[
  autocmd!
  autocmd BufWritePre *.tsx Neoformat
  autocmd BufWritePre *.ts Neoformat
  autocmd BufWritePre *.js Neoformat
  autocmd BufWritePre *.jsx Neoformat
]], false)
