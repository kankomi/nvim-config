vim.keymap.set('n', '<leader>rw', 'yiw:%s/<C-r>"//g<Left><Left>', { desc = 'Replace word' })
vim.keymap.set('v', '<leader>rw', 'y:%s/<C-r>"//g<Left><Left>', { desc = 'Replace highlighted text' })
vim.keymap.set('n', '<leader>x', ':bd<cr>', { desc = 'Close buffer' })
