vim.o.shell = "/bin/zsh"
vim.o.wrap = true
vim.o.showcmd = false
vim.o.autoindent = true
vim.o.cursorline = true
vim.o.ignorecase = false
vim.o.lazyredraw = true
vim.o.mouse = "a"
vim.o.number = true
vim.o.numberwidth = 5
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.undofile = true
vim.o.undodir = "/tmp/nvim"
vim.o.wildmenu = true
vim.o.foldmethod = "indent"
vim.o.foldlevel = 99
vim.o.laststatus = 2
vim.o.path = vim.o.path .. "**"
vim.o.updatetime = 100

vim.swapfile = true
vim.backup = true

local python_host = os.getenv("HOME") .. "/.pyenv/shims/python"
vim.g.python_host_prog = python_host
vim.g.python3_host_prog = python_host

vim.diagnostic.config({
  virtual_text = true
})

vim.api.nvim_create_autocmd("FileType", {
    pattern = {
        "javascript", "typescript", "typescriptreact", "javascriptreact",
        "xml", "yaml", "json", "html", "css", "sass", "scss", "less", "jinja", "htmldjango"
    },
    callback = function()
        vim.bo.shiftwidth = 2
        vim.bo.tabstop = 2
        vim.bo.expandtab = true
    end
})

vim.api.nvim_create_autocmd({"CursorHold", "CursorHoldI"}, {
    callback = function(args) 
        vim.diagnostic.open_float(nil, {focus=false})
    end
})

vim.api.nvim_create_autocmd("ExitPre", {
	group = vim.api.nvim_create_augroup("Exit", { clear = true }),
	command = "set guicursor=a:ver90",
	desc = "Set cursor back to beam when leaving Neovim."
})

