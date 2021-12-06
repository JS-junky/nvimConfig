local null_ls = require("null-ls")
null_ls.config({
    sources = {
        null_ls.builtins.diagnostics.eslint_d, -- eslint or eslint_d
        null_ls.builtins.code_actions.eslint_d, -- eslint or eslint_d
        null_ls.builtins.formatting.prettier -- prettier, eslint, eslint_d, or prettierd
    },
})

require("lspconfig")["null-ls"].setup({})
