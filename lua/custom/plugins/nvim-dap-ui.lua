return {
  'rcarriga/nvim-dap-ui',
  dependencies = {
    'mfussenegger/nvim-dap',
    'nvim-neotest/nvim-nio',
  },
  config = function()
    require('dapui').setup()
    local dap, dapui = require 'dap', require 'dapui'
    dap.listeners.after.event_initialized['dapui_config'] = function()
      dapui.open()
    end
    dap.listeners.before.event_terminated['dapui_config'] = function()
      dapui.close()
    end
    dap.listeners.before.event_exited['dapui_config'] = function()
      dapui.close()
    end

    vim.fn.sign_define('DapBreakpoint', { text = '🟥', texthl = '', linehl = '', numhl = '' })
    vim.fn.sign_define('DapStopped', { text = '▶️', texthl = '', linehl = '', numhl = '' })
  end,
  keys = {
    {
      '<leader>db',
      function()
        require('dap').toggle_breakpoint()
      end,
      desc = 'Toggle Breakpoint',
    },
    {
      '<leader>dt',
      function()
        require('dapui').toggle()
      end,
      desc = 'Toggle Debug UI',
    },
    {
      '<leader>dc',
      function()
        require('dap').continue()
      end,
      desc = 'Debug Continue',
    },
    {
      '<F10>',
      function()
        require('dap').step_over()
      end,
      desc = 'LazyGit',
    },
    {
      '<F11>',
      function()
        require('dap').step_into()
      end,
      desc = 'LazyGit',
    },
    {
      '<F12>',
      function()
        require('dap').step_out()
      end,
      desc = 'LazyGit',
    },
  },
}
