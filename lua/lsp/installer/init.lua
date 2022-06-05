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
