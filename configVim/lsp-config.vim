" LSP config (the mappings used in the default file don't quite work right)
nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gv :vs\|lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gs :sp\|lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gt :sp\|lua vim.lsp.buf.definition()<CR><C-w>T
nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
xnoremap <silent> gr :lua vim.lsp.buf.references()<CR>
nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
autocmd CursorMoved * lua vim.lsp.diagnostic.show_line_diagnostics()
nnoremap <silent> <A-;> <cmd>lua vim.lsp.diagnostic.goto_next({popup_opts = {focusable = false} })<CR>
nnoremap <silent> <A-,> <cmd>lua vim.lsp.diagnostic.goto_prev({popup_opts = {focusable = false} })<CR>
nnoremap <silent> <A-d> <cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>
nnoremap <silent> <A-r> <cmd>lua vim.lsp.buf.rename()<CR>

" Formatting
autocmd BufWritePre * lua vim.lsp.buf.formatting()
nnoremap <A-f> :lua vim.lsp.buf.formatting()<CR>

" Line diagnostic toggle functionality
let g:lineDiag = 1

function! LineDiagToggle()
    if g:lineDiag
      autocmd!
      lua for _, win in ipairs(vim.api.nvim_list_wins()) do local config = vim.api.nvim_win_get_config(win); if config.relative ~= "" then vim.api.nvim_win_close(win, false); print('Closing window', win) end end
        let g:lineDiag = 0
    else
      autocmd CursorMoved * lua vim.lsp.diagnostic.show_line_diagnostics()
        let g:lineDiag = 1
    endif
endfunction
nnoremap <F8> :call LineDiagToggle() <CR>
nnoremap <F6> :lua for _, win in ipairs(vim.api.nvim_list_wins()) do local config = vim.api.nvim_win_get_config(win); if config.relative ~= "" then vim.api.nvim_win_close(win, false); print('Closing window', win) end end<CR><CR>
