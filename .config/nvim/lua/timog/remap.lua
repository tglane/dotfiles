vim.g.mapleader = ' '

-- Open vim standard file browser
vim.keymap.set('n', ':Fb', vim.cmd.Ex)
vim.keymap.set('n', ':Tb', function()
    vim.api.nvim_command(':tabe')
    vim.cmd.Ex()
end)

-- Replace text in current buffer
vim.keymap.set('n', ':Rf', function()
    local input = vim.fn.input('Replace: ')

    local splitted = split_string(input, '/')
    local old_word = splitted[1]
    local new_word = splitted[2]

    -- Check if the new_word is different from the old_word and is not empty
    if new_word ~= old_word and new_word ~= '' then
      vim.cmd(':%s/' .. old_word .. '/' .. new_word .. '/g')
    end
end)

-- Move highlighted text up and down with J and K
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- Append line below to current line with J without moving cursor to the end
vim.keymap.set('n', 'J', 'mzJ`z')

function split_string(s, sep)
    local fields = {}
    
    local sep = sep or " "
    local pattern = string.format("([^%s]+)", sep)
    string.gsub(s, pattern, function(c) fields[#fields + 1] = c end)
    
    return fields
end
