local cmd = vim.cmd
local exec = vim.api.nvim_exec
local fn = vim.fn
local g = vim.g
local opt = vim.opt

g.mapleader = ","
opt.swapfile = false

opt.showmatch = true
opt.splitright = true
opt.splitbelow = true
opt.ignorecase = true
opt.smartcase = true
opt.autoindent = true
opt.timeoutlen = 1000
opt.ttimeoutlen = 0

-- Colorscheme
opt.termguicolors = true
vim.o.background = "light"
vim.g["g:gruvbox_contrast_light"] = "hard"
cmd [[colorscheme everforest]]

exec([[
  autocmd!
  autocmd BufWritePre *.tsx Neoformat
  autocmd BufWritePre *.ts Neoformat
  autocmd BufWritePre *.js Neoformat
  autocmd BufWritePre *.jsx Neoformat
]], false)
