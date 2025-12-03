require('tiny-inline-diagnostic').setup()

require('mason').setup({})

-- vim.lsp.config('clangd', {
--   cmd = { 'clangd', '--background-index' },
--   root_markers = { 'compile_commands.json', 'compile_flags.txt' },
--   filetypes = { 'c', 'cpp' },
-- })
-- 
-- vim.lsp.config('rust_analyzer', {
--     on_attach = on_attach,
--     capabilities = capabilities,
--     cmd = { 'rust-analyzer' },
--     filetypes = { 'rust' },
--     root_markers = {"Cargo.toml", ".git"},
--     single_file_support = true,
--     settings = {
--         ['rust-analyzer'] = {
--             diagnostics = {
--                 enable = true;
--             }
--         }
--     },
--     before_init = function(init_params, config)
--         -- See https://github.com/rust-lang/rust-analyzer/blob/eb5da56d839ae0a9e9f50774fa3eb78eb0964550/docs/dev/lsp-extensions.md?plain=1#L26
--         if config.settings and config.settings['rust-analyzer'] then
--             init_params.initializationOptions = config.settings['rust-analyzer']
--         end
--     end,
-- })

vim.lsp.enable({'rust_analyzer', 'clangd'})

vim.api.nvim_create_autocmd("BufWritePre", {
    buffer = buffer,
    callback = function()
        vim.lsp.buf.format { async = false }
    end
})
