return {
  vim.keymap.set('n', 'K', ':m .-2<CR>=='),
  vim.keymap.set('n', 'J', ':m .+1<CR>=='),
  vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv"),
  vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv"),
  vim.keymap.set('n', '<Leader>f', ':lua vim.lsp.buf.format({ async = true })<CR>', { desc = 'Format current buffer' }),
  vim.keymap.set('n', 'glh', ':lua vim.lsp.buf.hover()<CR>', { desc = 'Show hover information' }),
  vim.keymap.set('n', 'gls', ':lua vim.lsp.buf.signature_help()<CR>', { desc = 'Show signature help' }),
}
