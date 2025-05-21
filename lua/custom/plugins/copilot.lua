return {
  -- Add the Copilot plugin
  {
    'github/copilot.vim',
    config = function()
      -- Optional: Configure Copilot-specific settings
      vim.g.copilot_no_tab_map = true
      vim.api.nvim_set_keymap('i', '<C-J>', 'copilot#Accept("<CR>")', { silent = true, expr = true })
      vim.api.nvim_set_keymap('i', '<C-K>', 'copilot#Previous()', { silent = true, expr = true })
      vim.api.nvim_set_keymap('i', '<C-L>', 'copilot#Next()', { silent = true, expr = true })
    end,
  },
}
