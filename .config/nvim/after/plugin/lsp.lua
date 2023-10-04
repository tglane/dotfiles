local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.setup_nvim_cmp({
  select_behavior = 'insert'
})

lsp.ensure_installed({
  'clangd',
  'gopls',
  'rust_analyzer',
  'tsserver',
  'esling',
})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

lsp.format_on_save({
  format_opts = {
    async = false,
    timeout_ms = 10000,
  },
  servers = {
    ['eslint'] = {'javascript', 'typescript'},
    ['rust_analyzer'] = {'rust'},
    ['clangd'] = {'cpp', 'c'},
  }
})

lsp.on_attach(function(client, bufnr) 
    lsp.default_keymaps({buffer = bufnr})
    lsp.buffer_autoformat()
end)

lsp.setup()
