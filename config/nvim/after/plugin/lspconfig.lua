require("mason").setup()
require("mason-lspconfig").setup({
    automatic_installation = true,
})

local util = require'lspconfig'.util
local lsp = require('lspconfig');

-- LSP settings (for overriding per client)
local handlers =  {
  ["textDocument/hover"] =  vim.lsp.with(vim.lsp.handlers.hover, { border = 'single' }),
  ["textDocument/signatureHelp"] =  vim.lsp.with(vim.lsp.handlers.signature_help, { border = 'single' }),
}

-- setup language server
lsp.ruff_lsp.setup({})
lsp.pyright.setup({})

lsp.ts_ls.setup({
    root_dir = util.root_pattern("package.json"),
    handlers = handlers
})
lsp.eslint.setup({
  on_attach = function(_, bufnr)
    vim.api.nvim_create_autocmd("BufWritePre", {
      buffer = bufnr,
      command = "EslintFixAll",
    })
  end,
})

lsp.yamlls.setup{}

lsp.html.setup{}

lsp.clangd.setup{
    handlers = handlers,
}

lsp.gopls.setup{}

lsp.helm_ls.setup{
  settings = {
    ['helm-ls'] = {
      yamlls = {
        path = "yaml-language-server",
      }
    }
  }
}

lsp.lua_ls.setup {
  on_init = function(client)
    if client.workspace_folders then
      local path = client.workspace_folders[1].name
      if vim.loop.fs_stat(path..'/.luarc.json') or vim.loop.fs_stat(path..'/.luarc.jsonc') then
        return
      end
    end

    client.config.settings.Lua = vim.tbl_deep_extend('force', client.config.settings.Lua, {
      runtime = {
        version = 'LuaJIT'
      },
      workspace = {
        checkThirdParty = false,
        library = {
          vim.env.VIMRUNTIME
        }
      }
    })
  end,
  settings = {
    Lua = {}
  }
}

