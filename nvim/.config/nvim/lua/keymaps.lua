local map = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }
local cmd = vim.cmd

map('n', '<leader>c', ':nohl<CR>', default_opts)

map('i', 'jj', '<Esc>', {noremap = true})
map('n', '<leader>s', ':w<CR>', default_opts)
map('i', '<leader>s', '<C-c>:w<CR>', default_opts)
map('n', '<leader>w', ':w<CR>', default_opts)
map('i', '<leader>w', '<C-c>:w<CR>', default_opts)

map('n', '<leader>n', ':nohlsearch<CR>', default_opts)
map('n', '<leader>t', ':Telescope git_files disable_devicons=false<CR>', default_opts)
map('n', '<leader>a', ':Telescope live_grep disable_devicons=true<CR>', default_opts)
map('n', '<leader>b', ':Telescope buffers disable_devicons=true<CR>', default_opts)
map('n', '<leader>gs', ':Neogit<CR>', default_opts)
map('n', '<leader>gc', ':Telescope git_commits disable_devicons=true<CR>', default_opts)
map('n', '<leader>ld', ':Telescope lsp_definitions disable_devicons=true<CR>', default_opts)
map('n', '<leader>lr', ':Telescope lsp_references disable_devicons=true<CR>', default_opts)
map('n', '<leader>le', ':Telescope lsp_document_diagnostics disable_devicons=true<CR>', default_opts)
map('n', '-', ':Telescope file_browser disable_devicons=true cwd=%:p:h<CR>', default_opts)
