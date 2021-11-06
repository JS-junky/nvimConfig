local nvim_lsp = require("lspconfig")

-- make sure to only run this once!
nvim_lsp.tsserver.setup {
    -- Only needed for inlayHints. Merge this table with your settings or copy
    -- it from the source if you want to add your own init_options.
	init_options = require("nvim-lsp-ts-utils").init_options,
    --
    on_attach = function(client, bufnr)
        -- disable tsserver formatting if you plan on formatting via null-ls
        client.resolved_capabilities.document_formatting = false
        client.resolved_capabilities.document_range_formatting = false

        local ts_utils = require("nvim-lsp-ts-utils")

        -- defaults
        ts_utils.setup {
            debug = false,
            disable_commands = false,
            enable_import_on_completion = true,

            -- import all
            import_all_timeout = 5000, -- ms
            -- lower numbers indicate higher priority
            import_all_priorities = {
                same_file = 1, -- add to existing import statement
                local_files = 2, -- git files or files with relative path markers
                buffer_content = 3, -- loaded buffer content
                buffers = 4, -- loaded buffer names
            },
            import_all_scan_buffers = 100,
            import_all_select_source = false,

            -- eslint
            -- eslint_enable_code_actions = true,
            -- eslint_enable_disable_comments = true,
            -- eslint_bin = "eslint",
            -- eslint_enable_diagnostics = false,
            -- eslint_opts = {},

            -- formatting
            -- enable_formatting = false,
            -- formatter = "prettier",
            -- formatter_opts = {},

            -- update imports on file move
            update_imports_on_move = true,
            require_confirmation_on_move = true,
            watch_dir = nil,

            -- filter diagnostics
            -- filter_out_diagnostics_by_severity = {},
            -- filter_out_diagnostics_by_code = {},

            -- inlay hints
            -- auto_inlay_hints = true,
            -- inlay_hints_highlight = "Comment",
        }

        -- required to fix code action ranges and filter diagnostics
        ts_utils.setup_client(client)

        -- no default maps, so you may want to define some here
        -- local opts = { silent = true }
        -- vim.api.nvim_buf_set_keymap(bufnr, "n", "gs", ":TSLspOrganize<CR>", opts)
        -- vim.api.nvim_buf_set_keymap(bufnr, "n", "gr", ":TSLspRenameFile<CR>", opts)
        -- vim.api.nvim_buf_set_keymap(bufnr, "n", "gi", ":TSLspImportAll<CR>", opts)
    end
}
