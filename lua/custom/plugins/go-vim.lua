return {
  {
    'ray-x/go.nvim',
    dependencies = { -- optional packages
      'ray-x/guihua.lua',
      'neovim/nvim-lspconfig',
      'nvim-treesitter/nvim-treesitter',
      'theHamsta/nvim-dap-virtual-text',
    },
    config = function()
      require('go').setup()
    end,
    event = { 'CmdlineEnter' },
    ft = { 'go', 'gomod' },
    build = ':lua require("go.install").update_all_sync()', -- if you need to install/update all binaries
    keys = {
      { '<leader>goR', '<cmd>GoRun<CR>', desc = 'Run Go file' },
      { '<leader>goT', '<cmd>GoTestFunc<CR>', desc = 'Test Go function' },
      { '<leader>goD', '<cmd>GoDoc<CR>', desc = 'Show Go documentation' },
      { '<leader>goF', '<cmd>GoFillStruct<CR>', desc = 'Fill struct fields' },
      { '<leader>goI', '<cmd>GoInfo<CR>', desc = 'Show Go info' },
      { '<leader>goS', '<cmd>GoTagAdd<CR>', desc = 'Add struct tags' },
      { '<leader>goT', '<cmd>GoTestFunc<CR>', desc = 'Test Go function' },
    },
  },
}
