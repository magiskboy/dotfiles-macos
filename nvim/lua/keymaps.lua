vim.g.mapleader = ','

vim.api.nvim_set_keymap('n', '1', '^', {})   -- go to the start line
vim.api.nvim_set_keymap('n', '0', '$', {})   -- go to the end line

vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', {})
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', {})
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', {})
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', {})

vim.api.nvim_set_keymap('n', 'J', '5j', {})
vim.api.nvim_set_keymap('n', 'K', '5k', {})

vim.api.nvim_set_keymap('n', 'gd', ': Telescope lsp_definitions<CR>', { silent = true })
vim.api.nvim_set_keymap('n', 'gt', ': Telescope lsp_type_definitions<CR>', { silent = true })
vim.api.nvim_set_keymap('n', 'gr', ':Telescope lsp_references<CR>', { silent = true })
vim.api.nvim_set_keymap('n', 'gi', ':Telescope lsp_implementations<CR>', { silent = true })

vim.api.nvim_set_keymap('n', 'H', '<cmd>lua vim.lsp.buf.hover()<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<C-r>', '<cmd>lua vim.lsp.buf.rename()<CR>', { silent = true })

vim.api.nvim_set_keymap('n', '[g', '<cmd>lua vim.diagnostic.goto_prev()<CR>', { silent = true })
vim.api.nvim_set_keymap('n', ']g', '<cmd>lua vim.diagnostic.goto_next()<CR>', { silent = true })

vim.api.nvim_set_keymap('n', 'U', '<cmd>redo<cr>', {})
vim.api.nvim_set_keymap('n', '\\', '<cmd>noh<cr>', {})

vim.api.nvim_set_keymap('n', '<C-a>', 'ggVG', {})
vim.api.nvim_set_keymap('', '<C-s>', '<cmd>write<cr>', {})
vim.api.nvim_set_keymap('n', '<C-q>', '<cmd>quit<cr>', {})

vim.api.nvim_set_keymap('n', '<C-g>', '<cmd>lua git()<cr>', {})
