return {
  'leoluz/nvim-dap-go',
  dependencies = {
    'mfussenegger/nvim-dap',
    'theHamsta/nvim-dap-virtual-text',
    'Weissle/persistent-breakpoints.nvim',
  },
  config = function()
    require('dap-go').setup()
    require('nvim-dap-virtual-text').setup()
    vim.g.dap_virtual_text = true

    require('persistent-breakpoints').setup {
      load_breakpoints_event = { 'BufReadPost' },
    }
  end,
}
