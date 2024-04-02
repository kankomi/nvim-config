-- General
vim.keymap.set('n', '<leader>rw', 'yiw:%s/<C-r>"//g<Left><Left>', { desc = 'Replace word' })
vim.keymap.set('v', '<leader>rw', 'y:%s/<C-r>"//g<Left><Left>', { desc = 'Replace highlighted text' })
vim.keymap.set('n', '<leader>x', ':bd<cr>', { desc = 'Close buffer' })
vim.keymap.set('n', ';', ':', { desc = 'Open command line' })
vim.keymap.set('n', '<M-l>', '<cmd> bn<cr>', { desc = 'Next buffer' })
vim.keymap.set('n', '<M-h>', '<cmd> bp<cr>', { desc = 'Previous buffer' })
vim.keymap.set('i', 'jj', '<esc>', { desc = 'Return to normal mode' })
vim.keymap.set('n', '<C-s>', '<cmd> w<cr>', { desc = 'Save file' })

-- Conform
vim.keymap.set('n', '<leader>fm', function()
  local bufnr = vim.api.nvim_get_current_buf()
  require('conform').format { bufnr = bufnr }
end, { desc = 'Format current buffer' })

-- Copilot
vim.keymap.set('i', '<esc>', '<Plug>(copilot-dismiss)', { desc = 'Dismiss copilot suggestion' })
vim.keymap.set('i', '<M-ä>', '<Plug>(copilot-next)', { desc = 'Next suggestion' })
vim.keymap.set('i', '<M-ö>', '<Plug>(copilot-previous)', { desc = 'Previous suggestion' })
vim.keymap.set('i', '<M-c>', '<Plug>(copilot-suggest)', { desc = 'Suggest completion' })
