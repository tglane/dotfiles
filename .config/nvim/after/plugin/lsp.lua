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
})

lsp.setup()
