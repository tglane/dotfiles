local builtin = require("telescope.builtin")

-- Fuzzy find files in current tab
vim.keymap.set("n", ":Ff", builtin.find_files, {})

-- Fuzzy find files known to git in current tab
vim.keymap.set("n", ":Gf", builtin.live_grep, {})

-- Fuzzy find files in new tab
vim.keymap.set("n", ":Tf", function()
    vim.api.nvim_command(":tabe")
    builtin.find_files()
end)

-- Fuzzy find strings of project in current tab
vim.keymap.set("n", ":Ss", function() 
    builtin.grep_string({ search = vim.fn.input("Grep > ") });
    -- builtin.grep_string({ search = "" })
end)

-- Fuzzy find the string under the cursor of project in current tab
vim.keymap.set("n", ":Fs", function()
    builtin.grep_string()
end)

-- Fuzzy find strings of project in new tab
vim.keymap.set("n", ":Ts", function()
    vim.api.nvim_command(":tabe")
    builtin.grep_string({ search = vim.fn.input("Grep > ") });
    -- builtin.grep_string({ search = "" })
end)

vim.keymap.set("n", ":Ca", function()
    vim.lsp.buf.code_action()
end)
