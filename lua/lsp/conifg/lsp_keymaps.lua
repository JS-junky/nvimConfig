local function lsp_keymaps(bufnr)
  local opts = { silent = true, buffer = bufnr }
  vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
  vim.keymap.set("n", "gv", "<cmd>vs|lua vim.lsp.buf.definition()<CR>", opts)
  vim.keymap.set("n", "gs", "<cmd>sp|lua vim.lsp.buf.definition()<CR>", opts)
  vim.keymap.set("n", "gt", "<cmd>sp|lua vim.lsp.buf.definition()<CR><C-w>T", opts)
  vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
  vim.keymap.set("n", "gR", vim.lsp.buf.references, opts)
  vim.keymap.set("n", "gI", vim.lsp.buf.implementation, opts)
  vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
end

return lsp_keymaps
