return {
  'nvim-lualine/lualine.nvim',
  dependencies = {
    -- display macro recording
    { 'yavorski/lualine-macro-recording.nvim' },
  },
  opts = {
    sections = {
      -- add to section of your choice
      lualine_a = { 'mode', { 'tabs', mode = 1 } },
      lualine_b = { 'branch', 'diff', 'diagnostics' },
      lualine_c = { { 'filename', path = 1 }, { 'macro_recording', '%S' } },
      lualine_x = { 'encoding', 'fileformat', 'filetype' },
      lualine_y = { 'progress' },
      lualine_z = { 'location' },
    },
  },
}
