vim.cmd([[
filetype plugin indent on
set t_Co=256
colorscheme vscode
syntax on
syntime on
]])

vim.o.shell = "/bin/zsh"
vim.o.wrap = true
vim.o.showcmd = false
vim.o.autoindent = true
vim.o.cursorline = true
vim.o.ignorecase = false
vim.o.lazyredraw = true
vim.o.updatetime = 250
vim.o.mouse = "a"
vim.o.number = true
vim.o.numberwidth = 5
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.undofile = true
vim.swapfile = true
vim.backup = true
vim.o.undodir = "/tmp/nvim"
vim.o.wildmenu = true
vim.o.foldmethod = "indent"
vim.o.foldlevel = 99
vim.o.laststatus = 2
vim.o.path = vim.o.path .. "**"

vim.g.python3_host_prog = "/usr/local/bin/python"
vim.g.python_host_prog = "/usr/local/bin/python"
vim.g.indentLine_enabled = 1
vim.g.indentLine_char = '│'
vim.g.indentLine_color_term = 239
vim.g.AutoPairsShortcutToggle = ""
vim.g.floaterm_autoclose = 2

vim.g.vscode_style = "dark"
vim.o.background = 'dark'

vim.cmd([[
hi RedSign guibg=NONE
hi AquaSign guibg=NONE
hi YellowSign guibg=NONE
hi BlueSign guibg=NONE
hi LineNr cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=NONE guifg=NONE
hi SignColumn guibg=NONE ctermbg=NONE
autocmd FileType javascript,typescript,typescriptreact,javascriptreact,xml,yaml,json,html,css,sass,scss,less,jinja,htmldjango setlocal ts=2 sts=2 sw=2
]])

vim.api.nvim_create_user_command("Python", function (args)
    python()
end, {})

vim.api.nvim_create_user_command("Node", function (args)
    node()
end, {})

vim.api.nvim_create_user_command("Htop", function (args)
    htop()
end, {})

vim.diagnostic.config({
  virtual_text = true
})
