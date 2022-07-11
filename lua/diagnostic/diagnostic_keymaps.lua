local function diagnostic_keymaps(bufnr)
  local opts = { silent = true, buffer = bufnr }
  vim.keymap.set('n', '<A-d>', vim.diagnostic.open_float, opts)
  vim.keymap.set('n', '<A-;>', vim.diagnostic.goto_next, opts)
  vim.keymap.set('n', '<A-,>', vim.diagnostic.goto_prev, opts)
end

return diagnostic_keymaps
