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
nnoremap <silent> <A-n> <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <silent> <A-m> <cmd>lua vim.lsp.diagnostic.goto_next()<CR>
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
