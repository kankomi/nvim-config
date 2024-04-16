return {
  'romgrk/barbar.nvim',
  dependencies = {
    'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
    'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
  },
  init = function()
    vim.g.barbar_auto_setup = false

    vim.keymap.set('n', '<A-,>', ':BufferPrevious<CR>', { silent = true })
    vim.keymap.set('n', '<A-.>', ':BufferNext<CR>', { silent = true })
    vim.keymap.set('n', '<leader>x', '<cmd>BufferClose<cr>', { desc = 'Close buffer' })
    vim.keymap.set('n', '<leader>bp', '<cmd>BufferPick<cr>', { desc = 'Pick buffer' })
  end,
  opts = {},
  version = '^1.0.0', -- optional: only update when a new 1.x version is released
}
