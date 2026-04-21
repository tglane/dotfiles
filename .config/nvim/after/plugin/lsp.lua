require('tiny-inline-diagnostic').setup({
    preset = "powerline",
    transparent_background = false,
    add_messages = {
        messages = true,
        show_multiline_glyph = true,
    },
    options = {
        multilines = {
            enabled = true,
            always_show = true,
        },
    },
})

require('mason').setup({})

vim.lsp.enable({'rust_analyzer', 'clangd'})

vim.api.nvim_create_autocmd("BufWritePre", {
    buffer = buffer,
    callback = function()
        vim.lsp.buf.format { async = false }
    end
})
