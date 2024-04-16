return {
  'github/copilot.vim',
  keys = {
    { mode = 'i', '<esc>', '<Plug>(copilot-dismiss)', desc = 'Dismiss copilot suggestion' },
    { mode = 'i', '<M-ä>', '<Plug>(copilot-next)', desc = 'Next suggestion' },
    { mode = 'i', '<M-ö>', '<Plug>(copilot-previous)', desc = 'Previous suggestion' },
    { mode = 'i', '<M-c>', '<Plug>(copilot-suggest)', desc = 'Suggest completion' },
  },
}
