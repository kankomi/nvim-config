return {
  'mfussenegger/nvim-dap',
  config = function()
    local dap = require 'dap'
    -- dap.adapters.delve = {
    --   type = 'server',
    --   port = '${port}',
    --   executable = {
    --     command = 'dlv',
    --     args = { 'dap', '-l', '127.0.0.1:${port}' },
    --   },
    -- }
    dap.adapters.go = {
      type = 'executable',
      command = 'node',
      args = { vim.fn.stdpath 'data' .. '/mason/bin/go-debug-adapter' },
    }
    dap.configurations.go = {
      {
        type = 'go',
        name = 'Debug',
        request = 'launch',
        showLog = false,
        program = '${file}',
        dlvToolPath = vim.fn.exepath 'dlv', -- Adjust to where delve is installed
      },
    }
    -- dap.configurations.go = {
    --   {
    --     type = 'delve',
    --     name = 'My Debug',
    --     request = 'launch',
    --     program = './${relativeFileDirName}',
    --   },
    -- }
  end,
}
