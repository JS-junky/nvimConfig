local status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")
if not status_ok then
  return
end

local servers = {
  "tsserver",
  "eslint",
  "cssls",
  "html",
  "jsonls",
  "clangd",
  "sumneko_lua",
  "hls",
  "bashls",
  "intelephense",
  "vimls",
  "jdtls",
  "zeta_note",
  "rust_analyzer"
}

lsp_installer.setup({
  ensure_installed = servers,
  automatic_installation = true,
  ui = {
    icons = {
      server_installed = "✓",
      server_pending = "➜ ",
      server_uninstalled = "✗"
    }
  }
})

local lspconfig = require('lspconfig')
local lsp_keymaps = require('lsp_keymaps')
local diagnostic_keymaps = require('diagnostic.diagnostic_keymaps')
local tsserver_settings = require('settings.tsserver')
local sumneko_lua_settings = require('settings.sumneko_lua')
local capabilities = vim.lsp.protocol.make_client_capabilities()

for _, server in pairs(servers) do
  lspconfig[server].setup({
    capabilities = capabilities,
    on_attach = function(client, bufnr)
      tsserver_settings(client)
      sumneko_lua_settings(client)
      diagnostic_keymaps(bufnr)
      lsp_keymaps(bufnr)
    end
  })
end
