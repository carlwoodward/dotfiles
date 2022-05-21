local map = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }
local cmd = vim.cmd

map('n', '<leader>c', ':nohl<CR>', default_opts)

map('i', 'jj', '<Esc>', {noremap = true, nowait = true})
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
map('n', '<leader>lt', ':TroubleToggle<CR>', default_opts)
map('n', '-', ':Telescope file_browser disable_devicons=true cwd=%:p:h<CR>', default_opts)

map('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', default_opts)
map('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', default_opts)
map('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', default_opts)
map('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', default_opts)
map('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', default_opts)
map('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', default_opts)
map('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', default_opts)
map('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', default_opts)
map('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', default_opts)
