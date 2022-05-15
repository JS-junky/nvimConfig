require("nvim-lsp-installer").setup({
  ensure_installed = {
    "tsserver",
    "eslint",
    "cssls",
    "html",
    "jsonls",
    "clangd",
    "sumneko_lua",
    -- "hls",
    "bashls",
    "intelephense",
    "vimls",
    "jdtls",
    "zeta_note",
    "rust_analyzer"
  },
  automatic_installation = true,
  ui = {
    icons = {
      server_installed = "✓",
      server_pending = "➜ ",
      server_uninstalled = "✗"
    }
  }
})

-- -----------------------SUMNEKO_LUA -----------------------------
require 'lspconfig'.sumneko_lua.setup {
  globals = { 'vim' }
}
-- -----------------------SUMNEKO_LUA -----------------------------

-- -----------------------TSSERVER-----------------------------
require 'lspconfig'.tsserver.setup {}
-- -----------------------TSSERVER-----------------------------

-- -----------------------CSSLS/HTML-----------------------------
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

require 'lspconfig'.cssls.setup {
  capabilities = capabilities,
}
require 'lspconfig'.html.setup {
  capabilities = capabilities,
}
-- -----------------------CSSLS/HTML-----------------------------

-- -----------------------HLS-----------------------------
require 'lspconfig'.hls.setup {}
-- -----------------------HLS-----------------------------

-- ----------------------VIMLS----------------------------
require 'lspconfig'.vimls.setup {}
-- ----------------------VIMLS----------------------------

vim.cmd [[
  hi DiagnosticUnderlineError guifg=red
  hi DiagnosticUnderlineWarn guifg=orange
  hi DiagnosticUnderlineInfo guifg=blue
  hi DiagnosticUnderlineHint guifg=yellow
	sign define DiagnosticSignError text=❌ texthl=DiagnosticSignError linehl= numhl=
	sign define DiagnosticSignWarn text=⚠ texthl=DiagnosticSignWarn linehl= numhl=
	sign define DiagnosticSignInfo text=🛈 texthl=DiagnosticSignInfo linehl= numhl=
	sign define DiagnosticSignHint text=💡 texthl=DiagnosticSignHint linehl= numhl=
]]
