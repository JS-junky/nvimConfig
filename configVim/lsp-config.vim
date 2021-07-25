" LSP config (the mappings used in the default file don't quite work right)
nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gv :vs<CR><cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gs :sp<CR><cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gt :sp<CR><cmd>lua vim.lsp.buf.definition()<CR><C-W>T
nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
" nnoremap <silent> <A-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> <A-;> <cmd>lua vim.lsp.diagnostic.goto_next()<CR>
nnoremap <silent> <A-'> <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <silent> <A-r> <cmd>lua vim.lsp.buf.rename()<CR>

" auto-format
autocmd BufWritePre *.js lua vim.lsp.buf.formatting_sync(nil, 100)
autocmd BufWritePre *.jsx lua vim.lsp.buf.formatting_sync(nil, 100)
autocmd BufWritePre *.py lua vim.lsp.buf.formatting_sync(nil, 100)
autocmd BufWritePre *.ts lua vim.lsp.buf.formatting_sync(nil, 100)
autocmd BufWritePre *.json lua vim.lsp.buf.formatting_sync(nil, 100)
autocmd BufWritePre *.html lua vim.lsp.buf.formatting_sync(nil, 100)
autocmd BufWritePre *.css lua vim.lsp.buf.formatting_sync(nil, 100)
autocmd BufWritePre *.sql lua vim.lsp.buf.formatting_sync(nil, 100)

lua << EOF
  local nvim_lsp = require("lspconfig")
nvim_lsp.tsserver.setup {
    on_attach = function(client, bufnr)
        local ts_utils = require("nvim-lsp-ts-utils")
        -- defaults
        ts_utils.setup {
            debug = true,
            disable_commands = false,
            enable_import_on_completion = true,
            -- import all
            import_all_timeout = 5000, -- ms
            import_all_priorities = {
                buffers = 4, -- loaded buffer names
                buffer_content = 3, -- loaded buffer content
                local_files = 2, -- git files or files with relative path markers
                same_file = 1, -- add to existing import statement
            },
            import_all_scan_buffers = 100,
            import_all_select_source = false,
            -- update imports on file move
            update_imports_on_move = false,
            require_confirmation_on_move = false,
            watch_dir = nil,
        }
        -- required to fix code action ranges
        ts_utils.setup_client(client)
    end
}
EOF
