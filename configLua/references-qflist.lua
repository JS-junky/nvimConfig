local util = require 'vim.lsp.util'
vim.lsp.handlers['textDocument/references'] = function(_, _, result)
  if not result then return end
  util.set_qflist(util.locations_to_items(result))
  -- api.nvim_command("copen")
end

